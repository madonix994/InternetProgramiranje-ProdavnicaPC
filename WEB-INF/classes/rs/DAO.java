package rs;// vazni importi 




import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import java.util.ArrayList;
public class DAO {
      private DataSource ds;

// DEFINICIJA KONEKCIONIH STRINGOVA
      private static String GETKUPACBYUSERPASS = "SELECT * FROM kupac WHERE username_kupca = ? and password_kupca = ?";
      private static String GETKUPACTBYUSERNAME = "SELECT * FROM kupac WHERE username_kupca = ? ";
  	  private static String INSERTKUPAC = "INSERT INTO kupac(ime_kupca,prezime_kupca,adresa_kupca,username_kupca,password_kupca) VALUES (?,?,?,?,?)";
  	private static String INSERTFORMA = "INSERT INTO forma (ime, prezime, email, naslov_poruke, poruka) VALUES(?, ?, ?, ?, ?)";

  	  
//ZA ARTIKLE
  	private static String SELECTARTIKALBYID = "SELECT * FROM artikal WHERE artikal_id = ?";
  	
  	
 //ZA KATEGORIJE
  	private static String SELECTKATEGORIJE = "SELECT * FROM tip_artikla ta JOIN artikal a ON ta.tip_artikla_id=a.tip_artikla_id_ta WHERE ta.tip_artikla_id=?";
  	private static String SELECTPOIMENU = "SELECT * FROM tip_artikla ta JOIN artikal a ON ta.tip_artikla_id=a.tip_artikla_id_ta WHERE a.naziv_artikla LIKE ?";

  	
  //ZA ADMINA
	private static String SELECTSVIRACUNI = "SELECT racun.racun_id, radnik.ime_radnika, radnik.prezime_radnika, kupac.ime_kupca, kupac.prezime_kupca, kupac.adresa_kupca, artikal.naziv_artikla, artikal.prodajna_cena_artikla, tip_artikla.ime_tipa_artikla, nacin_isporuke.naziv_isporuke, racun.ukupna_cena,racun.status, racun.datum_izdavanja FROM racun JOIN artikal_racun ON racun.racun_id = artikal_racun.racun_id_r JOIN radnik ON racun.radnik_id_r = radnik.radnik_id JOIN kupac ON racun.kupac_id_k = kupac.kupac_id JOIN artikal ON artikal_racun.artikal_id_ar = artikal.artikal_id JOIN tip_artikla ON artikal.tip_artikla_id_ta = tip_artikla.tip_artikla_id JOIN nacin_isporuke ON racun.nacin_isporuke_id_ni = nacin_isporuke.nacin_isporuke_id GROUP BY racun.racun_id ";
	private static String SELECTSVEPORUKE = "SELECT * FROM forma ORDER BY forma_id";
	private static String SELECTSVEKATEGORIJE = "SELECT * FROM tip_artikla";
	private static String SELECTSVEISPORUKE = "SELECT * FROM nacin_isporuke";
	private static String SELECTSVIDOBAVLJACI = "SELECT * FROM dobavljac";
	private static String SELECTSVIRADNICI = "SELECT * FROM radnik";
	private static String SELECTSVIARTIKLI = "SELECT artikal.*, tip_artikla.ime_tipa_artikla FROM artikal JOIN tip_artikla ON artikal.tip_artikla_id_ta = tip_artikla.tip_artikla_id";
	private static String SELECTSVIKUPCI = "SELECT * FROM kupac";
	
	
	private static String DELETERADNIK = "DELETE FROM radnik WHERE radnik_id = ?";
	private static String DELETENTIPARTIKLA = "DELETE FROM tip_artikla WHERE tip_artikla_id = ?";
	private static String DELETENACINISPORUKE = "DELETE FROM nacin_isporuke WHERE nacin_isporuke_id = ?";
	private static String DELETEDOBAVLJAC = "DELETE FROM dobavljac WHERE dobavljac_id = ?";
	private static String DELETEPORUKA = "DELETE FROM forma WHERE forma_id = ?";
	
	private static String INSERTNOVIARTIKAL = "INSERT INTO artikal (naziv_artikla, prodajna_cena_artikla, kolicina_artikla, tip_artikla_id_ta) VALUES (?, ?, ?, ?)";
	private static String INSERTNOVIRADNIK = "INSERT INTO radnik (ime_radnika, prezime_radnika, adresa_radnika, broj_telefona_radnika) VALUES (?, ?, ?, ?)";
	private static String INSERTNOVIDOBAVLJAC = "INSERT INTO dobavljac (naziv_dobavljaca, adresa_dobavljaca, broj_telefona_dobavljaca, grad) VALUES (?, ?, ?, ?)";
	private static String INSERTNOVAISPORUKA = "INSERT INTO nacin_isporuke (naziv_isporuke) VALUES (?)";
	private static String INSERTNOVITIPARTIKLA = "INSERT INTO tip_artikla (ime_tipa_artikla, opis_tipa_artikla) VALUES (?, ?)";
  	
	
	private static String SELECTRADNIKBYID = "SELECT * from radnik WHERE radnik_id = ?";
	private static String SELECTTIPARTIKLABYID = "SELECT * from tip_artikla WHERE tip_artikla_id = ?";
	private static String SELECTTNACINISPORUKEBYID = "SELECT * from nacin_isporuke WHERE nacin_isporuke_id = ?";
	private static String SELECTDOBAVLJACBYID = "SELECT * from dobavljac WHERE dobavljac_id = ?";

	
	private static String UPDATERADNIK = "UPDATE radnik SET ime_radnika = ?, prezime_radnika = ?, adresa_radnika = ?, broj_telefona_radnika = ? WHERE radnik_id = ?";
	private static String UPDATETIPARTIKLA = "UPDATE tip_artikla SET ime_tipa_artikla = ?, opis_tipa_artikla = ? WHERE tip_artikla_id = ?";
	private static String UPDATEARTIKAL = "UPDATE artikal SET naziv_artikla = ?, prodajna_cena_artikla = ?, kolicina_artikla = ? WHERE artikal_id = ?";
	private static String UPDATENACINISPORUKE = "UPDATE nacin_isporuke SET naziv_isporuke = ? WHERE nacin_isporuke_id = ?";
	private static String UPDATEDOBAVLJAC = "UPDATE dobavljac SET naziv_dobavljaca = ?, adresa_dobavljaca = ?, broj_telefona_dobavljaca = ?, grad = ? WHERE dobavljac_id = ?";

	
	//ZA RACUN
	private static String INSERTRACUN = "	INSERT INTO racun (radnik_id_r, kupac_id_k, nacin_isporuke_id_ni,ukupna_cena,status) VALUES (?,?,?,?,?)";
	private static String SELECTLASTRACUN = "SELECT * FROM racun ORDER BY racun_id DESC LIMIT 1";
	private static String INSERTARTIKALRACUN = "INSERT INTO artikal_racun( artikal_id_ar, racun_id_r) VALUES (?,?)";
  	
	
	private static String ISPISRACUNA = "SELECT racun.racun_id, radnik.ime_radnika, radnik.prezime_radnika, kupac.ime_kupca, kupac.prezime_kupca, kupac.adresa_kupca, artikal.naziv_artikla, COUNT(artikal_id),artikal.kolicina_artikla, artikal.prodajna_cena_artikla, tip_artikla.ime_tipa_artikla, nacin_isporuke.naziv_isporuke,racun.ukupna_cena,racun.status, racun.datum_izdavanja FROM racun JOIN artikal_racun ON racun.racun_id = artikal_racun.racun_id_r JOIN radnik ON racun.radnik_id_r = radnik.radnik_id JOIN kupac ON racun.kupac_id_k = kupac.kupac_id JOIN artikal ON artikal_racun.artikal_id_ar = artikal.artikal_id JOIN tip_artikla ON artikal.tip_artikla_id_ta = tip_artikla.tip_artikla_id JOIN nacin_isporuke ON racun.nacin_isporuke_id_ni = nacin_isporuke.nacin_isporuke_id WHERE racun.racun_id = ? GROUP BY artikal_racun.artikal_id_ar";
	private static String UPDATERACUNA = "UPDATE racun SET status= ? WHERE racun_id =?";
	
	
	
	//ZA KORISNIKA
	private static String UPDATEKUPAC = "UPDATE kupac SET ime_kupca=?, prezime_kupca = ?, adresa_kupca = ? , username_kupca = ?, password_kupca = ? WHERE kupac_id = ?";
	private static String SELECTKUPACBYID = "SELECT * FROM kupac WHERE kupac_id = ?";
	private static String ISPISRACUNAKORISNIKA = "SELECT racun.racun_id, radnik.ime_radnika, radnik.prezime_radnika, kupac.ime_kupca, kupac.prezime_kupca, kupac.adresa_kupca, artikal.naziv_artikla, COUNT(artikal_id), artikal.prodajna_cena_artikla, tip_artikla.ime_tipa_artikla, nacin_isporuke.naziv_isporuke,racun.ukupna_cena,racun.status, racun.datum_izdavanja FROM racun JOIN artikal_racun ON racun.racun_id = artikal_racun.racun_id_r JOIN radnik ON racun.radnik_id_r = radnik.radnik_id JOIN kupac ON racun.kupac_id_k = kupac.kupac_id JOIN artikal ON artikal_racun.artikal_id_ar = artikal.artikal_id JOIN tip_artikla ON artikal.tip_artikla_id_ta = tip_artikla.tip_artikla_id JOIN nacin_isporuke ON racun.nacin_isporuke_id_ni = nacin_isporuke.nacin_isporuke_id WHERE kupac.kupac_id = ? GROUP BY racun.racun_id";

	
	//ZA IZMENU STANJA
	private static String IZMENAKOLICINE = "UPDATE artikal SET kolicina_artikla = ? WHERE naziv_artikla = ?";
	
  	  // DEFINICIJA KONSTRUKTORA ZA PODESAVNJE KONEKCIJE – UVEK ISTO
	public DAO(){
	try {
		InitialContext cxt = new InitialContext();
		if ( cxt == null ) { 
		} 
		ds = (DataSource) cxt.lookup( "java:/comp/env/jdbc/mysql" ); 
		if ( ds == null ) { 
		} 		
		} catch (NamingException e) {
		}
	}
	// DEFINICIJA METODE 
	public Kupac getKupacByImePass(String username_kupca,String password_kupca){
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
		ArrayList<Kupac> lo = new ArrayList<Kupac>();
		Kupac pom = null;
				
            try {
			con = ds.getConnection();
			pstm = con.prepareStatement(GETKUPACBYUSERPASS);

			// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
			pstm.setString(1, username_kupca);
			pstm.setString(2, password_kupca);
			pstm.execute();

//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
			rs = pstm.getResultSet();

			while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
				// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
				pom = new Kupac();
				// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
				pom.setKupac_id(rs.getInt("kupac_id"));
				pom.setUsername_kupca(rs.getString("username_kupca"));
				pom.setPassword_kupca(rs.getString("password_kupca"));
				pom.setIme_kupca(rs.getString("ime_kupca"));
				pom.setPrezime_kupca(rs.getString("prezime_kupca"));
				pom.setAdresa_kupca(rs.getString("adresa_kupca"));
				// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
				lo.add(pom);
			}
//****KRAJ OBRADE ResultSet-a	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
		return pom; 
	}
	// DEFINICIJA OSTALIH METODA ... 
	
	public boolean getKupacByUsername(String username_kupca){
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
			boolean ima = false;
            try {
			con = ds.getConnection();
			pstm = con.prepareStatement(GETKUPACTBYUSERNAME);

			// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
			pstm.setString(1, username_kupca);
			pstm.execute();

//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
			rs = pstm.getResultSet();

			if(rs.next()){ // if AKO UPIT VRACA JEDAN REZULTAT
				ima = true;
			}
//****KRAJ OBRADE ResultSet-a	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ima; 
	}
	
	public void insertKupac(Kupac k){
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
            try {
			con = ds.getConnection();
			pstm = con.prepareStatement(INSERTKUPAC);

			// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
			pstm.setString(1, k.getIme_kupca());
			pstm.setString(2, k.getPrezime_kupca());
			pstm.setString(3, k.getAdresa_kupca());
			pstm.setString(4, k.getUsername_kupca());
			pstm.setString(5, k.getPassword_kupca());
			pstm.execute();

//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
//****KRAJ OBRADE ResultSet-a	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public Artikal getArtikalByID(int artikal_id){
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
		Artikal pom = null;
            try {
			con = ds.getConnection();
			pstm = con.prepareStatement(SELECTARTIKALBYID);

			// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
			pstm.setInt(1, artikal_id);
			pstm.execute();

//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
			rs = pstm.getResultSet();

			while(rs.next()){ // if AKO UPIT VRACA JEDAN REZULTAT
				pom = new Artikal();

				pom.setArtikal_id(rs.getInt("artikal_id"));
				pom.setNaziv_artikla(rs.getString("naziv_artikla"));
				pom.setProdajna_cena_artikla(rs.getInt("prodajna_cena_artikla"));
			}
//****KRAJ OBRADE ResultSet-a	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pom; 
	}
	
	
	public ArrayList<Tip_artiklaArtikal> selectKategorije(int tip_artikla_id){
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
		ArrayList<Tip_artiklaArtikal> lo = new ArrayList<Tip_artiklaArtikal>();
		Tip_artiklaArtikal pom = null;
				
            try {
			con = ds.getConnection();
			pstm = con.prepareStatement(SELECTKATEGORIJE);

			// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
			pstm.setInt(1, tip_artikla_id);
			pstm.execute();

//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
			rs = pstm.getResultSet();

			while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
				// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
				pom = new Tip_artiklaArtikal();
				// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
				pom.setArtikal_id(rs.getInt("artikal_id"));
				pom.setNaziv_artikla(rs.getString("naziv_artikla"));
				pom.setProdajna_cena_artikla(rs.getInt("prodajna_cena_artikla"));
				pom.setKolicina_artikla(rs.getInt("kolicina_artikla"));
				pom.setTip_artikla_id_ta(rs.getInt("tip_artikla_id_ta"));
				pom.setIme_tipa_artikla(rs.getString("ime_tipa_artikla"));
				pom.setOpis_tipa_artikla(rs.getString("opis_tipa_artikla"));
				pom.setTip_artikla_id(rs.getInt("tip_artikla_id"));
				
				// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
				lo.add(pom);
			}
//****KRAJ OBRADE ResultSet-a	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
		return lo; 
	}
	
	
	public ArrayList<Tip_artiklaArtikal> selectPoImenu(String naziv_artikla){
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
		ArrayList<Tip_artiklaArtikal> lo = new ArrayList<Tip_artiklaArtikal>();
		Tip_artiklaArtikal pom = null;
				
            try {
			con = ds.getConnection();
			pstm = con.prepareStatement(SELECTPOIMENU);

			// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
			pstm.setString(1, "%"+naziv_artikla+"%");
			pstm.execute();

//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
			rs = pstm.getResultSet();

			while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
				// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
				pom = new Tip_artiklaArtikal();
				// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
				pom.setArtikal_id(rs.getInt("artikal_id"));
				pom.setNaziv_artikla(rs.getString("naziv_artikla"));
				pom.setProdajna_cena_artikla(rs.getInt("prodajna_cena_artikla"));
				pom.setKolicina_artikla(rs.getInt("kolicina_artikla"));
				pom.setTip_artikla_id_ta(rs.getInt("tip_artikla_id_ta"));
				pom.setIme_tipa_artikla(rs.getString("ime_tipa_artikla"));
				pom.setOpis_tipa_artikla(rs.getString("opis_tipa_artikla"));
				pom.setTip_artikla_id(rs.getInt("tip_artikla_id"));
				
				// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
				lo.add(pom);
			}
//****KRAJ OBRADE ResultSet-a	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
		return lo; 
	}
	
	
	
	public void insertForma(Forma forma){
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
				
         try {
			con = ds.getConnection();
			pstm = con.prepareStatement(INSERTFORMA);

			// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
			pstm.setString(1, forma.getIme());
			pstm.setString(2, forma.getPrezime());
			pstm.setString(3, forma.getEmail());
			pstm.setString(4, forma.getNaslov_poruke());
			pstm.setString(5, forma.getPoruka());
			pstm.execute();

	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
	}
	
	
	
	public ArrayList<SviRacuni> selectSviRacuni(){
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
		ArrayList<SviRacuni> lo = new ArrayList<SviRacuni>();
		SviRacuni sviRacuni = null;
				
         try {
			con = ds.getConnection();
			pstm = con.prepareStatement(SELECTSVIRACUNI);

			// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 

			pstm.execute();

//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
			rs = pstm.getResultSet();

			while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
				// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
				sviRacuni = new SviRacuni();
				// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
				sviRacuni.setRacun_id(rs.getInt("racun_id"));
				sviRacuni.setIme_radnika(rs.getString("ime_radnika"));
				sviRacuni.setPrezime_radnika(rs.getString("prezime_radnika"));
				sviRacuni.setIme_kupca(rs.getString("ime_kupca"));
				sviRacuni.setPrezime_kupca(rs.getString("prezime_kupca"));
				sviRacuni.setAdresa_kupca(rs.getString("adresa_kupca"));
				sviRacuni.setNaziv_artikla(rs.getString("naziv_artikla"));
				sviRacuni.setProdajna_cena_artikla(rs.getInt("prodajna_cena_artikla"));
				sviRacuni.setIme_tipa_artikla(rs.getString("ime_tipa_artikla"));
				sviRacuni.setNaziv_isporuke(rs.getString("naziv_isporuke"));
				sviRacuni.setUkupna_cena(rs.getInt("ukupna_cena"));
				sviRacuni.setStatus(rs.getString("status"));
				sviRacuni.setDatum_izdavanja(rs.getTimestamp("datum_izdavanja"));
				// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
				lo.add(sviRacuni);
			}
//****KRAJ OBRADE ResultSet-a	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
		return lo; 
	}
	// DEFINICIJA OSTALIH METODA ... 
	
	// DEFINICIJA METODE 
		public ArrayList<Forma> selectSvePoruke(){
			Connection con = null;
			PreparedStatement pstm = null;
			ResultSet rs = null;
			// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
			ArrayList<Forma> lo = new ArrayList<Forma>();
			Forma forma = null;
					
	         try {
				con = ds.getConnection();
				pstm = con.prepareStatement(SELECTSVEPORUKE);

				// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 

				pstm.execute();

	//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
				rs = pstm.getResultSet();

				while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
					// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
					forma = new Forma();
					// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
					forma.setForma_id(rs.getInt("forma_id"));
					forma.setIme(rs.getString("ime"));
					forma.setPrezime(rs.getString("prezime"));
					forma.setEmail(rs.getString("email"));
					forma.setNaslov_poruke(rs.getString("naslov_poruke"));
					forma.setPoruka(rs.getString("poruka"));
					// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
					lo.add(forma);
				}
	//****KRAJ OBRADE ResultSet-a	
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
			return lo; 
		}
		// DEFINICIJA OSTALIH METODA ... 
		
		// DEFINICIJA METODE 
				public ArrayList<TipArtikla> selectSveKategorije(){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					ArrayList<TipArtikla> lo = new ArrayList<TipArtikla>();
					TipArtikla kategorija = null;
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(SELECTSVEKATEGORIJE);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 

						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
							// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
							kategorija = new TipArtikla();
							// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
							kategorija.setTip_artikla_id(rs.getInt("tip_artikla_id"));
							kategorija.setIme_tipa_artikla(rs.getString("ime_tipa_artikla"));
							kategorija.setOpis_tipa_artikla(rs.getString("opis_tipa_artikla"));
							// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
							lo.add(kategorija);
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
					return lo; 
				}
				// DEFINICIJA OSTALIH METODA ... 
				
				// DEFINICIJA METODE 
				public void insertTipArtikla(String ime_tipa_artikla, String opis_tipa_artikla){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(INSERTNOVITIPARTIKLA);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setString(1, ime_tipa_artikla);
						pstm.setString(2, opis_tipa_artikla);
						pstm.execute();

				
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
				}
				// DEFINICIJA OSTALIH METODA ... 
				
				// DEFINICIJA METODE 
				public ArrayList<NacinIsporuke> selectSveIsporuke(){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					ArrayList<NacinIsporuke> lo = new ArrayList<NacinIsporuke>();
					NacinIsporuke isporuka = null;
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(SELECTSVEISPORUKE);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 

						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
							// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
							isporuka = new NacinIsporuke();
							// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
							isporuka.setNacin_isporuke_id(rs.getInt("nacin_isporuke_id"));
							isporuka.setNaziv_isporuke(rs.getString("naziv_isporuke"));
							// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
							lo.add(isporuka);
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
					return lo; 
				}
				// DEFINICIJA OSTALIH METODA ... 
				
				// DEFINICIJA METODE 
				public void insertNacinIsporuke(String naziv_isporuke){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(INSERTNOVAISPORUKA);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setString(1, naziv_isporuke);
						pstm.execute();

				
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
				}
				// DEFINICIJA OSTALIH METODA ... 
				
				// DEFINICIJA METODE 
				public ArrayList<Dobavljac> selectSviDobavljaci(){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					ArrayList<Dobavljac> lo = new ArrayList<Dobavljac>();
					Dobavljac dobavljac = null;
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(SELECTSVIDOBAVLJACI);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 

						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
							// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
							dobavljac = new Dobavljac();
							// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
							dobavljac.setDobavljac_id(rs.getInt("dobavljac_id"));
							dobavljac.setNaziv_dobavljaca(rs.getString("naziv_dobavljaca"));
							dobavljac.setAdresa_dobavljaca(rs.getString("adresa_dobavljaca"));
							dobavljac.setBroj_telefona_dobavljaca(rs.getInt("broj_telefona_dobavljaca"));
							dobavljac.setGrad(rs.getString("grad"));
							// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
							lo.add(dobavljac);
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
					return lo; 
				}
				// DEFINICIJA OSTALIH METODA ...
				
				// DEFINICIJA METODE 
				public void insertDobavljac(String naziv_dobavljaca, String adresa_dobavljaca, int broj_telefona_dobavljaca, String grad){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(INSERTNOVIDOBAVLJAC);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setString(1, naziv_dobavljaca);
						pstm.setString(2, adresa_dobavljaca);
						pstm.setInt(3, broj_telefona_dobavljaca);
						pstm.setString(4, grad);
						pstm.execute();

				
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
				}
				// DEFINICIJA OSTALIH METODA ... 
				
				// DEFINICIJA METODE 
				public ArrayList<Radnik> selectSviRadnici(){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					ArrayList<Radnik> lo = new ArrayList<Radnik>();
					Radnik radnik = null;
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(SELECTSVIRADNICI);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 

						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
							// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
							radnik = new Radnik();
							// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
							radnik.setRadnik_id(rs.getInt("radnik_id"));
							radnik.setIme_radnika(rs.getString("ime_radnika"));
							radnik.setPrezime_radnika(rs.getString("prezime_radnika"));
							radnik.setAdresa_radnika(rs.getString("adresa_radnika"));
							radnik.setBroj_telefona_radnika(rs.getInt("broj_telefona_radnika"));
							// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
							lo.add(radnik);
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
					return lo; 
				}
				// DEFINICIJA OSTALIH METODA ...
				
				// DEFINICIJA METODE 
				public void insertRadnik(String ime_radnika, String prezime_radnika, String adresa_radnika, int broj_telefona_radnika){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(INSERTNOVIRADNIK);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setString(1, ime_radnika);
						pstm.setString(2, prezime_radnika);
						pstm.setString(3, adresa_radnika);
						pstm.setInt(4, broj_telefona_radnika);
						pstm.execute();

				
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
				}
				// DEFINICIJA OSTALIH METODA ...
				
				public void deletePorukaById(int forma_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					try {
						con = ds.getConnection();
						pstm = con.prepareStatement(DELETEPORUKA);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, forma_id);
						pstm.execute();


						//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
				}
				// DEFINICIJA OSTALIH METODA ...
				
				public void deleteDobavljacById(int dobavljac_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					try {
						con = ds.getConnection();
						pstm = con.prepareStatement(DELETEDOBAVLJAC);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, dobavljac_id);
						pstm.execute();


						//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
				}
				// DEFINICIJA OSTALIH METODA ...
				
				public void deleteNacinIsporukeById(int nacin_isporuke_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					try {
						con = ds.getConnection();
						pstm = con.prepareStatement(DELETENACINISPORUKE);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, nacin_isporuke_id);
						pstm.execute();


						//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
				}
				// DEFINICIJA OSTALIH METODA ...
				
				public void deleteTipArtiklaById(int tip_artikla_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					try {
						con = ds.getConnection();
						pstm = con.prepareStatement(DELETENTIPARTIKLA);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, tip_artikla_id);
						pstm.execute();


						//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
				}
				// DEFINICIJA OSTALIH METODA ...
				
				public void deleteRadnikById(int radnik_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					try {
						con = ds.getConnection();
						pstm = con.prepareStatement(DELETERADNIK);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, radnik_id);
						pstm.execute();


						//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
				}
				// DEFINICIJA OSTALIH METODA ...
	
				
				
				public void insertRacun(Racun r){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(INSERTRACUN);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, r.getRadnik_id_r());
						pstm.setInt(2, r.getKupac_id_k());
						pstm.setInt(3, r.getNacin_isporuke_id_ni());
						pstm.setInt(4, r.getUkupna_cena());
						pstm.setString(5, r.getStatus());
						pstm.execute();

				
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
				}
				// DEFINICIJA OSTALIH METODA ...
				
				
				
				public Racun getLastRacun(){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					ArrayList<Racun> lo = new ArrayList<Racun>();
					Racun pom = null;
							
			            try {
						con = ds.getConnection();
						pstm = con.prepareStatement(SELECTLASTRACUN);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						
						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
							// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
							pom = new Racun();
							// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
							pom.setRacun_id(rs.getInt("racun_id"));
							pom.setRadnik_id_r(rs.getInt("radnik_id_r"));
							pom.setKupac_id_k(rs.getInt("kupac_id_k"));
							pom.setNacin_isporuke_id_ni(rs.getInt("nacin_isporuke_id_ni"));
							pom.setStatus(rs.getString("status"));
							pom.setDatum_izdavanja(rs.getTimestamp("datum_izdavanja"));
							// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
							lo.add(pom);
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
					return pom; 
				}
				
				
				
				
				
				public void insertArtikalRacun(int artikal_id_ar,int racun_id_r){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(INSERTARTIKALRACUN);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, artikal_id_ar);						
						pstm.setInt(2, racun_id_r);
						pstm.execute();

				
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
				}
				
				
				public ArrayList<Tip_artiklaArtikal> selectSviArtikliSaTipovima(){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					ArrayList<Tip_artiklaArtikal> lo = new ArrayList<Tip_artiklaArtikal>();
					Tip_artiklaArtikal tip = null;
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(SELECTSVIARTIKLI);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 

						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
							// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
							tip = new Tip_artiklaArtikal();
							// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
							tip.setArtikal_id(rs.getInt("artikal_id"));
							tip.setNaziv_artikla(rs.getString("naziv_artikla"));
							tip.setProdajna_cena_artikla(rs.getInt("prodajna_cena_artikla"));
							tip.setKolicina_artikla(rs.getInt("kolicina_artikla"));
							tip.setTip_artikla_id_ta(rs.getInt("tip_artikla_id_ta"));
							tip.setIme_tipa_artikla(rs.getString("ime_tipa_artikla"));
							// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
							lo.add(tip);
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
					return lo; 
				}
				// DEFINICIJA OSTALIH METODA ... 
				
				// DEFINICIJA METODE 
				public void insertNoviArtikal(String naziv_artikla, int prodajna_cena_artikla, int kolicina_artikla, int tip_artikla_id_ta){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(INSERTNOVIARTIKAL);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setString(1, naziv_artikla);
						pstm.setInt(2, prodajna_cena_artikla);
						pstm.setInt(3, kolicina_artikla);
						pstm.setInt(4, tip_artikla_id_ta);
						pstm.execute();

				
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
				}
				// DEFINICIJA OSTALIH METODA ... 
				
				// DEFINICIJA METODE 
				public ArrayList<Kupac> selectSviKupci(){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					ArrayList<Kupac> lo = new ArrayList<Kupac>();
					Kupac kupac = null;
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(SELECTSVIKUPCI);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 

						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
							// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
							kupac = new Kupac();
							// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
							kupac.setKupac_id(rs.getInt("kupac_id"));
							kupac.setIme_kupca(rs.getString("ime_kupca"));
							kupac.setPrezime_kupca(rs.getString("prezime_kupca"));
							kupac.setAdresa_kupca(rs.getString("adresa_kupca"));
							kupac.setUsername_kupca(rs.getString("username_kupca"));
							kupac.setPassword_kupca(rs.getString("password_kupca"));
							// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
							lo.add(kupac);
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
					return lo; 
				}
				// DEFINICIJA OSTALIH METODA ...
				
				
				// DEFINICIJA OSTALIH METODA ... 
				
				public SviRacuni ispisRacuna(int racun_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					SviRacuni pom = null;
			            try {
						con = ds.getConnection();
						pstm = con.prepareStatement(ISPISRACUNA);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, racun_id);
						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if AKO UPIT VRACA JEDAN REZULTAT
							pom = new SviRacuni();

							pom.setRacun_id(rs.getInt("racun_id"));
							pom.setIme_radnika(rs.getString("ime_radnika"));
							pom.setPrezime_radnika(rs.getString("prezime_radnika"));
							pom.setIme_kupca(rs.getString("ime_kupca"));
							pom.setPrezime_kupca(rs.getString("prezime_kupca"));
							pom.setAdresa_kupca(rs.getString("adresa_kupca"));
							pom.setNaziv_artikla(rs.getString("naziv_artikla"));
							pom.setProdajna_cena_artikla(rs.getInt("prodajna_cena_artikla"));
							pom.setIme_tipa_artikla(rs.getString("ime_tipa_artikla"));
							pom.setNaziv_isporuke(rs.getString("naziv_isporuke"));
							pom.setUkupna_cena(rs.getInt("ukupna_cena"));
							pom.setDatum_izdavanja(rs.getTimestamp("datum_izdavanja"));
							pom.setStatus(rs.getString("status"));
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					return pom; 
				}
				//DEFINICIJA OSTALIH METODA
				
				
			
				
				public ArrayList<SviRacuni> ispisRacunali(int racun_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					ArrayList<SviRacuni> lo = new ArrayList<SviRacuni>();
					SviRacuni sviRacuni = null;
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(ISPISRACUNA);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, racun_id);
						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
							// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
							sviRacuni = new SviRacuni();
							// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
							sviRacuni.setRacun_id(rs.getInt("racun_id"));
							sviRacuni.setIme_radnika(rs.getString("ime_radnika"));
							sviRacuni.setPrezime_radnika(rs.getString("prezime_radnika"));
							sviRacuni.setIme_kupca(rs.getString("ime_kupca"));
							sviRacuni.setPrezime_kupca(rs.getString("prezime_kupca"));
							sviRacuni.setAdresa_kupca(rs.getString("adresa_kupca"));
							sviRacuni.setNaziv_artikla(rs.getString("naziv_artikla"));
							sviRacuni.setProdajna_cena_artikla(rs.getInt("prodajna_cena_artikla"));
							sviRacuni.setIme_tipa_artikla(rs.getString("ime_tipa_artikla"));
							sviRacuni.setNaziv_isporuke(rs.getString("naziv_isporuke"));
							sviRacuni.setDatum_izdavanja(rs.getTimestamp("datum_izdavanja"));;
							sviRacuni.setArtikal_id(rs.getInt("COUNT(artikal_id)"));
							sviRacuni.setStatus(rs.getString("status"));
							sviRacuni.setKolicina_artikla(rs.getInt("kolicina_artikla"));
							// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
							lo.add(sviRacuni);
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
					return lo; 
				}
				
				//DEFINICIJA OSTALIH METODA
				
				public void updateKupac(String ime_kupca, String prezime_kupca, String adresa_kupca, String username_kupca, String password_kupca, int kupac_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					
					Kupac pom = null;
							
			            try {
						con = ds.getConnection();
						pstm = con.prepareStatement(UPDATEKUPAC);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setString(1, ime_kupca);
						pstm.setString(2, prezime_kupca);
						pstm.setString(3, adresa_kupca);
						pstm.setString(4, username_kupca);
						pstm.setString(5, password_kupca);
						pstm.setInt(6, kupac_id);
						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
					
				}
				
				//DEFINICIJA OSTALIH METODA
				
				public Kupac selectKupacById(int kupac_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					Kupac kupac = null;
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(SELECTKUPACBYID);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, kupac_id);
						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
							// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
							kupac = new Kupac();
							// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
							kupac.setKupac_id(rs.getInt("kupac_id"));
							kupac.setIme_kupca(rs.getString("ime_kupca"));
							kupac.setPrezime_kupca(rs.getString("prezime_kupca"));
							kupac.setAdresa_kupca(rs.getString("adresa_kupca"));
							kupac.setUsername_kupca(rs.getString("username_kupca"));
							kupac.setPassword_kupca(rs.getString("password_kupca"));
							// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
							
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
					return kupac; 
				}
				
				//DEFINICIJA OSTALIH METODA
				
				public ArrayList<SviRacuni> ispisRacunaKupca(int kupac_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					ArrayList<SviRacuni> lo = new ArrayList<SviRacuni>();
					SviRacuni sviRacuni = null;
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(ISPISRACUNAKORISNIKA);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, kupac_id);
						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if UMESTO while AKO UPIT VRACA JEDAN REZULTAT
							// KREIRANJE INSTANCE KLASE PREKO PODRAZUMEVANOG KONSTRUKTORA
							sviRacuni = new SviRacuni();
							// SET-OVANJE SVIH ATRIBUTA KLASE SA ODGOVARAJUCIM VREDNOSTIMA IZ RESULTSET-A rs
							sviRacuni.setRacun_id(rs.getInt("racun_id"));
							sviRacuni.setIme_radnika(rs.getString("ime_radnika"));
							sviRacuni.setPrezime_radnika(rs.getString("prezime_radnika"));
							sviRacuni.setIme_kupca(rs.getString("ime_kupca"));
							sviRacuni.setPrezime_kupca(rs.getString("prezime_kupca"));
							sviRacuni.setAdresa_kupca(rs.getString("adresa_kupca"));
							sviRacuni.setNaziv_artikla(rs.getString("naziv_artikla"));
							sviRacuni.setProdajna_cena_artikla(rs.getInt("prodajna_cena_artikla"));
							sviRacuni.setIme_tipa_artikla(rs.getString("ime_tipa_artikla"));
							sviRacuni.setNaziv_isporuke(rs.getString("naziv_isporuke"));
							sviRacuni.setDatum_izdavanja(rs.getTimestamp("datum_izdavanja"));;
							sviRacuni.setArtikal_id(rs.getInt("COUNT(artikal_id)"));
							sviRacuni.setUkupna_cena(rs.getInt("ukupna_cena"));
							sviRacuni.setStatus(rs.getString("status"));
							// DODAVANJE INSTANCE U LISTU AKO METODA VRACA LISTU, AKO NE VRACA ONDA NE TREBA 
							lo.add(sviRacuni);
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
					return lo; 
				}
				
				//DEFINICIJA OSTALIH METODA
				
				
				
				public void updateRacun(String status, int racun_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					
					Kupac pom = null;
							
			            try {
						con = ds.getConnection();
						pstm = con.prepareStatement(UPDATERACUNA);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setString(1, status);					
						pstm.setInt(2, racun_id);
						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
					
				}
				
				//OSTALE METODE
				
				public void updateStanje(int kolicina_artikla, String naziv_artikla){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					
					Kupac pom = null;
							
			            try {
						con = ds.getConnection();
						pstm = con.prepareStatement(IZMENAKOLICINE);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, kolicina_artikla);
						pstm.setString(2, naziv_artikla);					
			
						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
					
				}
				
				// DEFINICIJA METODE 
				public void updateRadnik(Radnik radnik, int radnik_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(UPDATERADNIK);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setString(1, radnik.getIme_radnika());
						pstm.setString(2, radnik.getPrezime_radnika());
						pstm.setString(3, radnik.getAdresa_radnika());
						pstm.setInt(4, radnik.getBroj_telefona_radnika());
						pstm.setInt(5, radnik_id);
						pstm.execute();


					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT 
				}
				// DEFINICIJA OSTALIH METODA ... 
				
				public Radnik selectRadnikByID(int radnik_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					Radnik pom = null;
			            try {
						con = ds.getConnection();
						pstm = con.prepareStatement(SELECTRADNIKBYID);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, radnik_id);
						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if AKO UPIT VRACA JEDAN REZULTAT
							pom = new Radnik();

							pom.setRadnik_id(rs.getInt("radnik_id"));
							pom.setIme_radnika(rs.getString("ime_radnika"));
							pom.setPrezime_radnika(rs.getString("prezime_radnika"));
							pom.setAdresa_radnika(rs.getString("adresa_radnika"));
							pom.setBroj_telefona_radnika(rs.getInt("broj_telefona_radnika"));
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					return pom; 
				}
				
				// DEFINICIJA OSTALIH METODA ... 
				
				public TipArtikla selectTipArtiklaByID(int tip_artikla_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					TipArtikla pom = null;
			            try {
						con = ds.getConnection();
						pstm = con.prepareStatement(SELECTTIPARTIKLABYID);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, tip_artikla_id);
						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if AKO UPIT VRACA JEDAN REZULTAT
							pom = new TipArtikla();

							pom.setTip_artikla_id(rs.getInt("tip_artikla_id"));
							pom.setIme_tipa_artikla(rs.getString("ime_tipa_artikla"));
							pom.setOpis_tipa_artikla(rs.getString("opis_tipa_artikla"));
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					return pom; 
				}

				
				// DEFINICIJA METODE 
				public void updateKategoriju(TipArtikla kategorija, int tip_artikla_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(UPDATETIPARTIKLA);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setString(1, kategorija.getIme_tipa_artikla());
						pstm.setString(2, kategorija.getOpis_tipa_artikla());
						pstm.setInt(3, tip_artikla_id);
						pstm.execute();


					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT 
				}
				// DEFINICIJA OSTALIH METODA ...
				
				// DEFINICIJA METODE 
				public void updateArtikal(Artikal artikal, int artikal_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(UPDATEARTIKAL);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setString(1, artikal.getNaziv_artikla());
						pstm.setInt(2, artikal.getProdajna_cena_artikla());
						pstm.setInt(3, artikal.getKolicina_artikla());
						pstm.setInt(4, artikal_id);
						pstm.execute();


					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT 
				}
				// DEFINICIJA OSTALIH METODA ...
				
				public Artikal selectArtikalByID(int artikal_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					Artikal pom = null;
			            try {
						con = ds.getConnection();
						pstm = con.prepareStatement(SELECTARTIKALBYID);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, artikal_id);
						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if AKO UPIT VRACA JEDAN REZULTAT
							pom = new Artikal();

							pom.setArtikal_id(rs.getInt("artikal_id"));
							pom.setNaziv_artikla(rs.getString("naziv_artikla"));
							pom.setProdajna_cena_artikla(rs.getInt("prodajna_cena_artikla"));
							pom.setKolicina_artikla(rs.getInt("kolicina_artikla"));
							pom.setTip_artikla_id_ta(rs.getInt("tip_artikla_id_ta"));
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					return pom; 
				}				// DEFINICIJA OSTALIH METODA ...
				
				public NacinIsporuke selectNacinIsporukeByID(int nacin_isporuke_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					NacinIsporuke pom = null;
			            try {
						con = ds.getConnection();
						pstm = con.prepareStatement(SELECTTNACINISPORUKEBYID);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, nacin_isporuke_id);
						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if AKO UPIT VRACA JEDAN REZULTAT
							pom = new NacinIsporuke();

							pom.setNacin_isporuke_id(rs.getInt("nacin_isporuke_id"));
							pom.setNaziv_isporuke(rs.getString("naziv_isporuke"));
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					return pom; 
				}				// DEFINICIJA OSTALIH METODA ...
				
				// DEFINICIJA METODE 
				public void updateNacinIsporuke(NacinIsporuke nacIsp, int nacin_isporuke_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(UPDATENACINISPORUKE);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setString(1, nacIsp.getNaziv_isporuke());
						pstm.setInt(2, nacin_isporuke_id);
						pstm.execute();

				
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
				}
				// DEFINICIJA OSTALIH METODA ... 
				
				public Dobavljac selectDobavljacByID(int dobavljac_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
					Dobavljac pom = null;
			            try {
						con = ds.getConnection();
						pstm = con.prepareStatement(SELECTDOBAVLJACBYID);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setInt(1, dobavljac_id);
						pstm.execute();

			//****POCETAK AKO UPIT VRACA REZULTAT TREBA SLEDECI DEO 
						rs = pstm.getResultSet();

						while(rs.next()){ // if AKO UPIT VRACA JEDAN REZULTAT
							pom = new Dobavljac();

							pom.setDobavljac_id(rs.getInt("dobavljac_id"));
							pom.setNaziv_dobavljaca(rs.getString("naziv_dobavljaca"));
							pom.setAdresa_dobavljaca(rs.getString("adresa_dobavljaca"));
							pom.setBroj_telefona_dobavljaca(rs.getInt("broj_telefona_dobavljaca"));
							pom.setGrad(rs.getString("grad"));
						}
			//****KRAJ OBRADE ResultSet-a	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					return pom; 
				}				// DEFINICIJA OSTALIH METODA ...
				
				// DEFINICIJA METODE 
				public void updateDobavljac(Dobavljac d, int dobavljac_id){
					Connection con = null;
					PreparedStatement pstm = null;
					ResultSet rs = null;
					// POMOCNE PROMENLJIVE ZA KONKRETNU METODU 
							
			         try {
						con = ds.getConnection();
						pstm = con.prepareStatement(UPDATEDOBAVLJAC);

						// DOPUNJAVANJE SQL STRINGA, SVAKI ? SE MORA PODESITI 
						pstm.setString(1, d.getNaziv_dobavljaca());
						pstm.setString(2, d.getAdresa_dobavljaca());
						pstm.setInt(3, d.getBroj_telefona_dobavljaca());
						pstm.setString(4, d.getGrad());
						pstm.setInt(5, dobavljac_id);
						pstm.execute();

				
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					// VRACANJE REZULTATA AKO METODA VRACA REZULTAT
				}
				// DEFINICIJA OSTALIH METODA ...
				
}
