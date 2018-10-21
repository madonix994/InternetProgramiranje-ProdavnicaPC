package rs;

import java.sql.Timestamp;

public class SviRacuni {
	private int artikal_id, prodajna_cena_artikla, kolicina_artikla, tip_artikla_id_ta;
	private String naziv_artikla;
	
	private int artikal_racun_id, artikal_id_ar, racun_id_r;
	
	private int kupac_id;
	private String ime_kupca, prezime_kupca, adresa_kupca, username_kupca, password_kupca;
	 
	private int nacin_isporuke_id;
	private String naziv_isporuke;
	
	private int racun_id, radnik_id_r, kupac_id_k, nacin_isporuke_id_ni,ukupna_cena;
	private String status;
	private Timestamp datum_izdavanja;
	
	private int tip_artikla_id;
	private String ime_tipa_artikla, opis_tipa_artikla;
	
	private int radnik_id, broj_telefona_radnika;
	private String ime_radnika, prezime_radnika, adresa_radnika;
	public int getArtikal_id() {
		return artikal_id;
	}
	public void setArtikal_id(int artikal_id) {
		this.artikal_id = artikal_id;
	}
	public int getProdajna_cena_artikla() {
		return prodajna_cena_artikla;
	}
	public void setProdajna_cena_artikla(int prodajna_cena_artikla) {
		this.prodajna_cena_artikla = prodajna_cena_artikla;
	}
	public int getKolicina_artikla() {
		return kolicina_artikla;
	}
	public void setKolicina_artikla(int kolicina_artikla) {
		this.kolicina_artikla = kolicina_artikla;
	}
	public int getTip_artikla_id_ta() {
		return tip_artikla_id_ta;
	}
	public void setTip_artikla_id_ta(int tip_artikla_id_ta) {
		this.tip_artikla_id_ta = tip_artikla_id_ta;
	}
	public String getNaziv_artikla() {
		return naziv_artikla;
	}
	public void setNaziv_artikla(String naziv_artikla) {
		this.naziv_artikla = naziv_artikla;
	}
	public int getArtikal_racun_id() {
		return artikal_racun_id;
	}
	public void setArtikal_racun_id(int artikal_racun_id) {
		this.artikal_racun_id = artikal_racun_id;
	}
	public int getArtikal_id_ar() {
		return artikal_id_ar;
	}
	public void setArtikal_id_ar(int artikal_id_ar) {
		this.artikal_id_ar = artikal_id_ar;
	}
	public int getRacun_id_r() {
		return racun_id_r;
	}
	public void setRacun_id_r(int racun_id_r) {
		this.racun_id_r = racun_id_r;
	}
	public int getKupac_id() {
		return kupac_id;
	}
	public void setKupac_id(int kupac_id) {
		this.kupac_id = kupac_id;
	}
	public String getIme_kupca() {
		return ime_kupca;
	}
	public void setIme_kupca(String ime_kupca) {
		this.ime_kupca = ime_kupca;
	}
	public String getPrezime_kupca() {
		return prezime_kupca;
	}
	public void setPrezime_kupca(String prezime_kupca) {
		this.prezime_kupca = prezime_kupca;
	}
	public String getAdresa_kupca() {
		return adresa_kupca;
	}
	public void setAdresa_kupca(String adresa_kupca) {
		this.adresa_kupca = adresa_kupca;
	}
	public String getUsername_kupca() {
		return username_kupca;
	}
	public void setUsername_kupca(String username_kupca) {
		this.username_kupca = username_kupca;
	}
	public String getPassword_kupca() {
		return password_kupca;
	}
	public void setPassword_kupca(String password_kupca) {
		this.password_kupca = password_kupca;
	}
	public int getNacin_isporuke_id() {
		return nacin_isporuke_id;
	}
	public void setNacin_isporuke_id(int nacin_isporuke_id) {
		this.nacin_isporuke_id = nacin_isporuke_id;
	}
	public String getNaziv_isporuke() {
		return naziv_isporuke;
	}
	public void setNaziv_isporuke(String naziv_isporuke) {
		this.naziv_isporuke = naziv_isporuke;
	}
	public int getRacun_id() {
		return racun_id;
	}
	public void setRacun_id(int racun_id) {
		this.racun_id = racun_id;
	}
	public int getRadnik_id_r() {
		return radnik_id_r;
	}
	public void setRadnik_id_r(int radnik_id_r) {
		this.radnik_id_r = radnik_id_r;
	}
	public int getKupac_id_k() {
		return kupac_id_k;
	}
	public void setKupac_id_k(int kupac_id_k) {
		this.kupac_id_k = kupac_id_k;
	}
	public int getNacin_isporuke_id_ni() {
		return nacin_isporuke_id_ni;
	}
	public void setNacin_isporuke_id_ni(int nacin_isporuke_id_ni) {
		this.nacin_isporuke_id_ni = nacin_isporuke_id_ni;
	}
	public int getUkupna_cena() {
		return ukupna_cena;
	}
	public void setUkupna_cena(int ukupna_cena) {
		this.ukupna_cena = ukupna_cena;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Timestamp getDatum_izdavanja() {
		return datum_izdavanja;
	}
	public void setDatum_izdavanja(Timestamp datum_izdavanja) {
		this.datum_izdavanja = datum_izdavanja;
	}
	public int getTip_artikla_id() {
		return tip_artikla_id;
	}
	public void setTip_artikla_id(int tip_artikla_id) {
		this.tip_artikla_id = tip_artikla_id;
	}
	public String getIme_tipa_artikla() {
		return ime_tipa_artikla;
	}
	public void setIme_tipa_artikla(String ime_tipa_artikla) {
		this.ime_tipa_artikla = ime_tipa_artikla;
	}
	public String getOpis_tipa_artikla() {
		return opis_tipa_artikla;
	}
	public void setOpis_tipa_artikla(String opis_tipa_artikla) {
		this.opis_tipa_artikla = opis_tipa_artikla;
	}
	public int getRadnik_id() {
		return radnik_id;
	}
	public void setRadnik_id(int radnik_id) {
		this.radnik_id = radnik_id;
	}
	public int getBroj_telefona_radnika() {
		return broj_telefona_radnika;
	}
	public void setBroj_telefona_radnika(int broj_telefona_radnika) {
		this.broj_telefona_radnika = broj_telefona_radnika;
	}
	public String getIme_radnika() {
		return ime_radnika;
	}
	public void setIme_radnika(String ime_radnika) {
		this.ime_radnika = ime_radnika;
	}
	public String getPrezime_radnika() {
		return prezime_radnika;
	}
	public void setPrezime_radnika(String prezime_radnika) {
		this.prezime_radnika = prezime_radnika;
	}
	public String getAdresa_radnika() {
		return adresa_radnika;
	}
	public void setAdresa_radnika(String adresa_radnika) {
		this.adresa_radnika = adresa_radnika;
	}
	public SviRacuni(int artikal_id, int prodajna_cena_artikla,
			int kolicina_artikla, int tip_artikla_id_ta, String naziv_artikla,
			int artikal_racun_id, int artikal_id_ar, int racun_id_r,
			int kupac_id, String ime_kupca, String prezime_kupca,
			String adresa_kupca, String username_kupca, String password_kupca,
			int nacin_isporuke_id, String naziv_isporuke, int racun_id,
			int radnik_id_r, int kupac_id_k, int nacin_isporuke_id_ni,
			int ukupna_cena, String status, Timestamp datum_izdavanja,
			int tip_artikla_id, String ime_tipa_artikla,
			String opis_tipa_artikla, int radnik_id, int broj_telefona_radnika,
			String ime_radnika, String prezime_radnika, String adresa_radnika) {
		super();
		this.artikal_id = artikal_id;
		this.prodajna_cena_artikla = prodajna_cena_artikla;
		this.kolicina_artikla = kolicina_artikla;
		this.tip_artikla_id_ta = tip_artikla_id_ta;
		this.naziv_artikla = naziv_artikla;
		this.artikal_racun_id = artikal_racun_id;
		this.artikal_id_ar = artikal_id_ar;
		this.racun_id_r = racun_id_r;
		this.kupac_id = kupac_id;
		this.ime_kupca = ime_kupca;
		this.prezime_kupca = prezime_kupca;
		this.adresa_kupca = adresa_kupca;
		this.username_kupca = username_kupca;
		this.password_kupca = password_kupca;
		this.nacin_isporuke_id = nacin_isporuke_id;
		this.naziv_isporuke = naziv_isporuke;
		this.racun_id = racun_id;
		this.radnik_id_r = radnik_id_r;
		this.kupac_id_k = kupac_id_k;
		this.nacin_isporuke_id_ni = nacin_isporuke_id_ni;
		this.ukupna_cena = ukupna_cena;
		this.status = status;
		this.datum_izdavanja = datum_izdavanja;
		this.tip_artikla_id = tip_artikla_id;
		this.ime_tipa_artikla = ime_tipa_artikla;
		this.opis_tipa_artikla = opis_tipa_artikla;
		this.radnik_id = radnik_id;
		this.broj_telefona_radnika = broj_telefona_radnika;
		this.ime_radnika = ime_radnika;
		this.prezime_radnika = prezime_radnika;
		this.adresa_radnika = adresa_radnika;
	}
	public SviRacuni() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "SviRacuni [artikal_id=" + artikal_id
				+ ", prodajna_cena_artikla=" + prodajna_cena_artikla
				+ ", kolicina_artikla=" + kolicina_artikla
				+ ", tip_artikla_id_ta=" + tip_artikla_id_ta
				+ ", naziv_artikla=" + naziv_artikla + ", artikal_racun_id="
				+ artikal_racun_id + ", artikal_id_ar=" + artikal_id_ar
				+ ", racun_id_r=" + racun_id_r + ", kupac_id=" + kupac_id
				+ ", ime_kupca=" + ime_kupca + ", prezime_kupca="
				+ prezime_kupca + ", adresa_kupca=" + adresa_kupca
				+ ", username_kupca=" + username_kupca + ", password_kupca="
				+ password_kupca + ", nacin_isporuke_id=" + nacin_isporuke_id
				+ ", naziv_isporuke=" + naziv_isporuke + ", racun_id="
				+ racun_id + ", radnik_id_r=" + radnik_id_r + ", kupac_id_k="
				+ kupac_id_k + ", nacin_isporuke_id_ni=" + nacin_isporuke_id_ni
				+ ", ukupna_cena=" + ukupna_cena + ", status=" + status
				+ ", datum_izdavanja=" + datum_izdavanja + ", tip_artikla_id="
				+ tip_artikla_id + ", ime_tipa_artikla=" + ime_tipa_artikla
				+ ", opis_tipa_artikla=" + opis_tipa_artikla + ", radnik_id="
				+ radnik_id + ", broj_telefona_radnika="
				+ broj_telefona_radnika + ", ime_radnika=" + ime_radnika
				+ ", prezime_radnika=" + prezime_radnika + ", adresa_radnika="
				+ adresa_radnika + "]";
	}
	
	
	
	
}
