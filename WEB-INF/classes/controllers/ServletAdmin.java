package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rs.Artikal;
import rs.DAO;
import rs.Dobavljac;
import rs.Forma;
import rs.Kupac;
import rs.NacinIsporuke;
import rs.Radnik;
import rs.SviRacuni;
import rs.TipArtikla;
import rs.Tip_artiklaArtikal;


public class ServletAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String akcija = request.getParameter("akcija");
		
			if(akcija != null && akcija.trim().length() > 0){
				if(akcija.equals("racuni")){
					DAO d = new DAO();
					ArrayList<SviRacuni> loR = new ArrayList<SviRacuni>();
					HttpSession sesija = request.getSession();
					loR = d.selectSviRacuni();
					sesija.setAttribute("loR", loR);
					request.getRequestDispatcher("sviRacuni.jsp").forward(request, response);
				}else if(akcija.equals("poruke")){
					DAO d = new DAO();
					HttpSession sesija= request.getSession();
					ArrayList<Forma> loP = new ArrayList<Forma>();
					loP = d.selectSvePoruke();
					sesija.setAttribute("loP", loP);
					request.getRequestDispatcher("svePoruke.jsp").forward(request, response);
				}else if(akcija.equals("kategorije")){
					DAO d = new DAO();
					HttpSession sesija = request.getSession();
					ArrayList<TipArtikla> loK = new ArrayList<TipArtikla>();
					loK = d.selectSveKategorije();
					sesija.setAttribute("loK", loK);
					request.getRequestDispatcher("sveKategorije.jsp").forward(request, response);
				}else if(akcija.equals("isporuka")){
					DAO d = new DAO();
					HttpSession sesija = request.getSession();
					ArrayList<NacinIsporuke> loI = new ArrayList<NacinIsporuke>();
					loI = d.selectSveIsporuke();
					sesija.setAttribute("loI", loI);
					request.getRequestDispatcher("sveIsporuke.jsp").forward(request, response);
				}else if(akcija.equals("dobavljaci")){
					DAO d = new DAO();
					HttpSession sesija = request.getSession();
					ArrayList<Dobavljac> loD = new ArrayList<Dobavljac>();
					loD = d.selectSviDobavljaci();
					sesija.setAttribute("loD", loD);
					request.getRequestDispatcher("sviDobavljaci.jsp").forward(request, response);
				}else if(akcija.equals("radnici")){
					DAO d = new DAO();
					HttpSession sesija = request.getSession();
					ArrayList<Radnik> loRA = new ArrayList<Radnik>();
					loRA = d.selectSviRadnici();
					sesija.setAttribute("loRA", loRA);
					request.getRequestDispatcher("sviRadnici.jsp").forward(request, response);
				}else if(akcija.equals("ObrisiPoruku")){
					String formaId = request.getParameter("forma_id");
						if(formaId != null && formaId.trim().length() > 0){
							int forma_id = Integer.parseInt(formaId);
							DAO d = new DAO();
							d.deletePorukaById(forma_id);
							request.setAttribute("msg", "Uspešno ste obrisali Poruku!");
							request.getRequestDispatcher("admin.jsp").forward(request, response);
							
						}else{
							request.setAttribute("msg", "Nemoguće brisanje!");
							request.getRequestDispatcher("svePoruke.jsp").forward(request, response);
						}
				}else if(akcija.equals("ObrisiDobavljaca")){
					String dobavljacId = request.getParameter("dobavljac_id");
					if(dobavljacId != null && dobavljacId.trim().length() > 0){
						int dobavljac_id = Integer.parseInt(dobavljacId);
						DAO d = new DAO();
						d.deleteDobavljacById(dobavljac_id);
						request.setAttribute("msg", "Uspešno ste obrisali Dobavljača!");
						request.getRequestDispatcher("admin.jsp").forward(request, response);
						
					}else{
						request.setAttribute("msg", "Nemoguće brisanje!");
						request.getRequestDispatcher("sviDobavljaci.jsp").forward(request, response);
					}
				}else if(akcija.equals("ObrisiIsporuku")){
					String nacinIsporukeID = request.getParameter("nacin_isporuke_id");
					if(nacinIsporukeID != null && nacinIsporukeID.trim().length() > 0){
						int nacin_isporuke_id = Integer.parseInt(nacinIsporukeID);
						DAO d = new DAO();
						d.deleteNacinIsporukeById(nacin_isporuke_id);
						request.setAttribute("msg", "Uspešno ste obrisali Način Isporuke!");
						request.getRequestDispatcher("admin.jsp").forward(request, response);
						
					}else{
						request.setAttribute("msg", "Nemoguće brisanje!");
						request.getRequestDispatcher("sveIsporuke.jsp").forward(request, response);
					}
				}else if(akcija.equals("ObrisiKategoriju")){
					String tipArtiklaID = request.getParameter("tip_artikla_id");
					if(tipArtiklaID != null && tipArtiklaID.trim().length() > 0){
						int tip_artikla_id = Integer.parseInt(tipArtiklaID);
						DAO d = new DAO();
						d.deleteTipArtiklaById(tip_artikla_id);
						request.setAttribute("msg", "Uspešno ste obrisali Kategoriju!");
						request.getRequestDispatcher("admin.jsp").forward(request, response);
						
					}else{
						request.setAttribute("msg", "Nemoguće brisanje!");
						request.getRequestDispatcher("sveKategorije.jsp").forward(request, response);
					}
				}else if(akcija.equals("ObrisiRadnika")){
					String radnikID = request.getParameter("radnik_id");
					if(radnikID != null && radnikID.trim().length() > 0){
						int radnik_id = Integer.parseInt(radnikID);
						DAO d = new DAO();
						d.deleteRadnikById(radnik_id);
						request.setAttribute("msg", "Uspešno ste obrisali Radnika!");
						request.getRequestDispatcher("admin.jsp").forward(request, response);
						
					}else{
						request.setAttribute("msg", "Nemoguće brisanje!");
						request.getRequestDispatcher("sviRadnici.jsp").forward(request, response);
					}
			}else if(akcija.equals("artikli")){
				DAO d = new DAO();
				HttpSession sesija = request.getSession();
				ArrayList<Tip_artiklaArtikal> loAR = new ArrayList<Tip_artiklaArtikal>();
				loAR = d.selectSviArtikliSaTipovima();
				sesija.setAttribute("loAR", loAR);
				request.getRequestDispatcher("sviArtikli.jsp").forward(request, response);
		}else if(akcija.equals("kupci")){
			DAO d = new DAO();
			HttpSession sesija = request.getSession();
			ArrayList<Kupac> loKU = new ArrayList<Kupac>();
			loKU = d.selectSviKupci();
			sesija.setAttribute("loKU", loKU);
			request.getRequestDispatcher("sviKupci.jsp").forward(request, response);
			
						}else if(akcija.equals("UrediRadnika")){
							String radnikID = request.getParameter("radnik_id");
							if(radnikID != null && radnikID.trim().length() > 0){
								try {
									int radnik_id = Integer.parseInt(radnikID);
									DAO d = new DAO();
									Radnik r = new Radnik();
									r = d.selectRadnikByID(radnik_id);
									request.setAttribute("r", r);
									request.getRequestDispatcher("promeniRadnika.jsp").forward(request, response);
								} catch (Exception e) {
									request.setAttribute("msg", "Nešto ne valja!");
									request.getRequestDispatcher("promeniRadnika.jsp").forward(request, response);
								}
							}else{
								request.setAttribute("msg", "Nešto ne valja!");
								request.getRequestDispatcher("promeniRadnika.jsp").forward(request, response);
							}
						
					}else if(akcija.equals("UrediKategoriju")){
					String tipArtiklaID = request.getParameter("tip_artikla_id");
					if(tipArtiklaID != null && tipArtiklaID.trim().length() > 0){
						try {
							int tip_artikla_id = Integer.parseInt(tipArtiklaID);
							DAO d = new DAO();
							TipArtikla ta = new TipArtikla();
							ta = d.selectTipArtiklaByID(tip_artikla_id);
							request.setAttribute("ta", ta);
							request.getRequestDispatcher("promeniKategoriju.jsp").forward(request, response);
						} catch (Exception e) {
							request.setAttribute("msg", "Nešto ne valja!");
							request.getRequestDispatcher("promeniKategoriju.jsp").forward(request, response);
						}
					}else{
						//neki kod
					}
					
					}else if(akcija.equals("UrediArtikal")){
						String artikalID = request.getParameter("artikal_id");
						if(artikalID != null && artikalID.trim().length() > 0){
							try {
								int artikal_id = Integer.parseInt(artikalID);
								DAO d = new DAO();
								Artikal a = new Artikal();
								a = d.selectArtikalByID(artikal_id);
								request.setAttribute("a", a);
								request.getRequestDispatcher("promeniArtikal.jsp").forward(request, response);
							} catch (Exception e) {
								request.setAttribute("msg", "Nešto ne valja!");
								request.getRequestDispatcher("unosNovogArtikla.jsp").forward(request, response);
							}
						}else{
							//neki kod
						}
						
						}else if(akcija.equals("UrediIsporuku")){
							String nacinIsporukeID = request.getParameter("nacin_isporuke_id");
							if(nacinIsporukeID != null && nacinIsporukeID.trim().length() > 0){
								try {
									int nacin_isporuke_id = Integer.parseInt(nacinIsporukeID);
									DAO d = new DAO();
									NacinIsporuke ni = new NacinIsporuke();
									ni = d.selectNacinIsporukeByID(nacin_isporuke_id);
									request.setAttribute("ni", ni);
									request.getRequestDispatcher("promeniIsporuku.jsp").forward(request, response);
								} catch (Exception e) {
									request.setAttribute("msg", "Nešto ne valja!");
									request.getRequestDispatcher("promeniIsporuku.jsp").forward(request, response);
								}
							}else{
								request.setAttribute("msg", "GREŠKA!");
								request.getRequestDispatcher("promeniIsporuku.jsp").forward(request, response);
							}
							
							}else if(akcija.equals("UrediDobavljaca")){
								String dobavljacID = request.getParameter("dobavljac_id");
								if(dobavljacID != null && dobavljacID.trim().length() > 0){
									try {
										int dobavljac_id = Integer.parseInt(dobavljacID);
										DAO d = new DAO();
										Dobavljac dob = new Dobavljac();
										dob = d.selectDobavljacByID(dobavljac_id);
										request.setAttribute("dob", dob);
										request.getRequestDispatcher("promeniDobavljaca.jsp").forward(request, response);
									} catch (Exception e) {
										request.setAttribute("msg", "Nesto ne valja!");
										request.getRequestDispatcher("promeniDobavljaca.jsp").forward(request, response);
									}
								}else{
									request.setAttribute("msg", "GREŠKA!");
									request.getRequestDispatcher("promeniDobavljaca.jsp").forward(request, response);
								}
								}//drugi uslov
									}else{
										response.sendRedirect("index.jsp");
									}
						}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String akcija = request.getParameter("akcija");
		if(akcija != null && akcija.trim().length() > 0){
			if(akcija.equals("Unesi Kategoriju")){
				String ime_tipa_artikla = request.getParameter("ime_tipa_artikla");
				String opis_tipa_artikla = request.getParameter("opis_tipa_artikla");
					if(ime_tipa_artikla != null && ime_tipa_artikla.trim().length() > 0 &&
							opis_tipa_artikla != null && opis_tipa_artikla.trim().length() > 0){
						if(ime_tipa_artikla.length() > 3){
							if(opis_tipa_artikla.length() > 5 && opis_tipa_artikla.length() < 35){
								DAO d = new DAO();
								d.insertTipArtikla(ime_tipa_artikla, opis_tipa_artikla);
								request.setAttribute("msg", "Uspešno ste uneli novu Kategoriju!");
								request.getRequestDispatcher("admin.jsp").forward(request, response);
							}else{
								request.setAttribute("msg", "Opis mora imati od 5 do 35 karaktera.");
								request.getRequestDispatcher("unosNoveKategorije.jsp").forward(request, response);
							}
						}else{
							request.setAttribute("msg", "Ime tipa artikla mora biti duže od 3 karaktera.!");
							request.getRequestDispatcher("unosNoveKategorije.jsp").forward(request, response);
						}
						
					}else{
						request.setAttribute("msg", "Morate popuniti sva polja!");
						request.getRequestDispatcher("unosNoveKategorije.jsp").forward(request, response);
					}
			}else if(akcija.equals("Unesi Nacin Isporuke")){
				String naziv_isporuke = request.getParameter("naziv_isporuke");
					if(naziv_isporuke != null && naziv_isporuke.trim().length() > 0){
						if(naziv_isporuke.length() > 3){
							DAO d = new DAO();
							d.insertNacinIsporuke(naziv_isporuke);
							request.setAttribute("msg", "Uspešno ste uneli novi Način Isporuke!");
							request.getRequestDispatcher("admin.jsp").forward(request, response);
						}else{
							request.setAttribute("msg", "Naziv isporuke mora biti duži od 3 karaktera!");
							request.getRequestDispatcher("unosNoveIsporuke.jsp").forward(request, response);
						}
					}else{
						request.setAttribute("msg", "Morate popuniti sva polja!");
						request.getRequestDispatcher("unosNoveIsporuke.jsp").forward(request, response);
					}
			}else if(akcija.equals("Unesi Dobavljaca")){
				String naziv_dobavljaca = request.getParameter("naziv_dobavljaca");
				String adresa_dobavljaca = request.getParameter("adresa_dobavljaca");
				String broj_telefona = request.getParameter("broj_telefona_dobavljaca");
				String grad = request.getParameter("grad");
					if(naziv_dobavljaca != null && naziv_dobavljaca.trim().length() > 0 &&
							adresa_dobavljaca != null && adresa_dobavljaca.trim().length() > 0 &&
									broj_telefona != null && broj_telefona.trim().length() > 0 &&
											grad != null && grad.trim().length() > 0){
						if(naziv_dobavljaca.length() > 1){
							if(adresa_dobavljaca.length() > 8){
								if(grad.length() > 1){
									try {
										int broj_telefona_dobavljaca = Integer.parseInt(broj_telefona);
										
										DAO d = new DAO();
										d.insertDobavljac(naziv_dobavljaca, adresa_dobavljaca, broj_telefona_dobavljaca, grad);
										request.setAttribute("msg", "Uspešno ste uneli novog Dobavljača!");
										request.getRequestDispatcher("admin.jsp").forward(request, response);
									} catch (Exception e) {
										request.setAttribute("msg", "Broj telefona mora biti Broj!");
										request.getRequestDispatcher("unosNovogDobavljaca.jsp").forward(request, response);
									}
								}else{
									request.setAttribute("msg", "Grad mora imati više od 1 karaktera!");
									request.getRequestDispatcher("unosNovogDobavljaca.jsp").forward(request, response);
								}
							}else{
								request.setAttribute("msg", "Adresa mora imati više od 8 karaktera!");
								request.getRequestDispatcher("unosNovogDobavljaca.jsp").forward(request, response);
							}
						}else{
							request.setAttribute("msg", "Naziv mora imati više od jednog slova!");
							request.getRequestDispatcher("unosNovogDobavljaca.jsp").forward(request, response);
						}
					}else{
						request.setAttribute("msg", "Morate popuniti sva polja!");
						request.getRequestDispatcher("unosNovogDobavljaca.jsp").forward(request, response);
					}
			}else if(akcija.equals("Unesi Radnika")){
				String ime_radnika = request.getParameter("ime_radnika");
				String prezime_radnika = request.getParameter("prezime_radnika");
				String adresa_radnika = request.getParameter("adresa_radnika");
				String broj_telefona = request.getParameter("broj_telefona_radnika");
					if(ime_radnika != null && ime_radnika.trim().length() > 0 &&
							prezime_radnika != null && prezime_radnika.trim().length() > 0 &&
								adresa_radnika != null && adresa_radnika.trim().length() > 0 &&
									broj_telefona != null && broj_telefona.trim().length() > 0){
						if(ime_radnika.length() > 2){
							if(prezime_radnika.length() > 2){
								if(adresa_radnika.length() > 7){
									try {
										int broj_telefona_radnika = Integer.parseInt(broj_telefona);
										DAO d = new DAO();
										d.insertRadnik(ime_radnika, prezime_radnika, adresa_radnika, broj_telefona_radnika);
										request.setAttribute("msg", "Uspešno ste dodali novog Radnika!");
										request.getRequestDispatcher("admin.jsp").forward(request, response);
									} catch (Exception e) {
										request.setAttribute("msg", "Broj telefona mora biti BROJ!");
										request.getRequestDispatcher("unosNovogRadnika.jsp").forward(request, response);
									}
								}else{
									request.setAttribute("msg", "Adresa mora imati više od 8 karaktera!");
									request.getRequestDispatcher("unosNovogRadnika.jsp").forward(request, response);
								}
							}else{
								request.setAttribute("msg", "Prezime mora imati više od 2 karaktera!");
								request.getRequestDispatcher("unosNovogRadnika.jsp").forward(request, response);
							}
						}else{
							request.setAttribute("msg", "Ime mora imati više od 2 karaktera!");
							request.getRequestDispatcher("unosNovogRadnika.jsp").forward(request, response);
						}
					}else{
						request.setAttribute("msg", "Morate popuniti sva polja!");
						request.getRequestDispatcher("unosNovogRadnika.jsp").forward(request, response);
					}
			}else if(akcija.equals("Unesi Artikal")){
				String naziv_artikla = request.getParameter("naziv_artikla");
				String prodajnaCena_artikla = request.getParameter("prodajna_cena_artikla");
				String kolicinaArtikla = request.getParameter("kolicina_artikla");
				String tip_artikla_id = request.getParameter("tip_artikla_id_ta");
					if(naziv_artikla != null && naziv_artikla.trim().length() > 0 &&
							prodajnaCena_artikla != null && prodajnaCena_artikla.trim().length() > 0 &&
									kolicinaArtikla != null && kolicinaArtikla.trim().length() > 0 &&
											tip_artikla_id != null && tip_artikla_id.trim().length() > 0){
						
						try {
							int prodajna_cena_artikla = Integer.parseInt(prodajnaCena_artikla);
							int kolicina_artikla = Integer.parseInt(kolicinaArtikla);
							int tip_artikla_id_ta = Integer.parseInt(tip_artikla_id);
							
							DAO d = new DAO();
							d.insertNoviArtikal(naziv_artikla, prodajna_cena_artikla, kolicina_artikla, tip_artikla_id_ta);
							request.setAttribute("msg", "Uspešno ste uneli novi Artikal!");
							request.getRequestDispatcher("admin.jsp").forward(request, response);
							
						} catch (Exception e) {
							request.setAttribute("msg", "Ispravno Popunite Polja!");
							request.getRequestDispatcher("unosNovogArtikla.jsp").forward(request, response);
						}
						
					}else{
						request.setAttribute("msg", "Morate popuniti sva polja!");
						request.getRequestDispatcher("unosNovogArtikla.jsp").forward(request, response);
					}
			}else if(akcija.equals("Izmeni Radnika")){
				String ime_radnika = request.getParameter("ime_radnika");
				String prezime_radnika = request.getParameter("prezime_radnika");
				String adresa_radnika = request.getParameter("adresa_radnika");
				String broj_telefona = request.getParameter("broj_telefona_radnika");
				String id = request.getParameter("radnik_id");
					if(ime_radnika != null && ime_radnika.trim().length() > 0 &&
							prezime_radnika != null && prezime_radnika.trim().length() > 0 &&
								adresa_radnika != null && adresa_radnika.trim().length() > 0 &&
									broj_telefona != null && broj_telefona.trim().length() > 0 &&
										id != null && id.trim().length() > 0){
						if(ime_radnika.length() > 2){
							if(prezime_radnika.length() > 2){
								if(adresa_radnika.length() > 7){
									try {
										int broj_telefona_radnika = Integer.parseInt(broj_telefona);
										int radnik_id = Integer.parseInt(id);
										DAO d = new DAO();
										Radnik r = new Radnik(broj_telefona_radnika, ime_radnika, prezime_radnika, adresa_radnika);
										d.updateRadnik(r, radnik_id);
										request.setAttribute("msg", "Uspešno ste promenili Radnika!");
										request.getRequestDispatcher("admin.jsp").forward(request, response);
									} catch (Exception e) {
										request.setAttribute("msg", "Broj telefona mora biti BROJ!");
										request.getRequestDispatcher("promeniRadnika.jsp").forward(request, response);
									}
								}else{
									request.setAttribute("msg", "Adresa mora imati više od 8 karaktera!");
									request.getRequestDispatcher("promeniRadnika.jsp").forward(request, response);
								}
							}else{
								request.setAttribute("msg", "Prezime mora imati više od 2 karaktera!");
								request.getRequestDispatcher("promeniRadnika.jsp").forward(request, response);
							}
						}else{
							request.setAttribute("msg", "Ime mora imati više od 2 karaktera!");
							request.getRequestDispatcher("promeniRadnika.jsp").forward(request, response);
						}
					}else{
						request.setAttribute("msg", "Morate popuniti sva polja!");
						request.getRequestDispatcher("promeniRadnika.jsp").forward(request, response);
					}
			}else if(akcija.equals("Izmeni Kategoriju")){
				String ime_tipa_artikla = request.getParameter("ime_tipa_artikla");
				String opis_tipa_artikla = request.getParameter("opis_tipa_artikla");
				String tipArtiklaID = request.getParameter("tip_artikla_id");
					if(ime_tipa_artikla != null && ime_tipa_artikla.trim().length() > 0 &&
							opis_tipa_artikla != null && opis_tipa_artikla.trim().length() > 0 &&
									tipArtiklaID != null && tipArtiklaID.trim().length() > 0){
						if(ime_tipa_artikla.length() > 2){
							if(opis_tipa_artikla.length() > 2){
								
									try {
										
										int tip_artikla_id = Integer.parseInt(tipArtiklaID);
										DAO d = new DAO();
										TipArtikla tipArtikla = new TipArtikla(ime_tipa_artikla, opis_tipa_artikla);
										d.updateKategoriju(tipArtikla, tip_artikla_id);
										request.setAttribute("msg", "Uspešno ste promenili Kategoriju!");
										request.getRequestDispatcher("admin.jsp").forward(request, response);
									} catch (Exception e) {
										request.setAttribute("msg", "GRESKA!");
										request.getRequestDispatcher("promeniKategoriju.jsp").forward(request, response);
									}
								
							}else{
								request.setAttribute("msg", "Opis Kategorije mora imati više od 2 karaktera!");
								request.getRequestDispatcher("promeniKategoriju.jsp").forward(request, response);
							}
						}else{
							request.setAttribute("msg", "Ime Kategorije mora imati više od 2 karaktera!");
							request.getRequestDispatcher("promeniKategoriju.jsp").forward(request, response);
						}
					}else{
						request.setAttribute("msg", "Morate popuniti sva polja!");
						request.getRequestDispatcher("promeniKategoriju.jsp").forward(request, response);
					}
			}else if(akcija.equals("Izmeni Artikal")){
				String naziv_artikla = request.getParameter("naziv_artikla");
				String prodajnaCena_artikla = request.getParameter("prodajna_cena_artikla");
				String kolicinaArtikla = request.getParameter("kolicina_artikla");
				String artikalID = request.getParameter("artikal_id");
				String tipArtiklaIDta = request.getParameter("tip_artikla_id_ta");
					if(naziv_artikla != null && naziv_artikla.trim().length() > 0 &&
							prodajnaCena_artikla != null && prodajnaCena_artikla.trim().length() > 0 &&
									kolicinaArtikla != null && kolicinaArtikla.trim().length() > 0){
						
						try {
							int prodajna_cena_artikla = Integer.parseInt(prodajnaCena_artikla);
							int kolicina_artikla = Integer.parseInt(kolicinaArtikla);
							int artikal_id = Integer.parseInt(artikalID);
							int tip_artikla_id_ta = Integer.parseInt(tipArtiklaIDta);
							DAO d = new DAO();
							Artikal ar = new Artikal(naziv_artikla, prodajna_cena_artikla, kolicina_artikla, tip_artikla_id_ta);
							d.updateArtikal(ar, artikal_id);
							request.setAttribute("msg", "Uspešno ste promenili Artikal!");
							request.getRequestDispatcher("admin.jsp").forward(request, response);
							
						} catch (Exception e) {
							request.setAttribute("msg", "Ispravno Popunite Polja!");
							request.getRequestDispatcher("promeniArtikal.jsp").forward(request, response);
						}
						
					}else{
						request.setAttribute("msg", "Morate popuniti sva polja!");
						request.getRequestDispatcher("promeniArtikal.jsp").forward(request, response);
					}
			}else if(akcija.equals("Izmeni Nacin Isporuke")){
				String naziv_isporuke = request.getParameter("naziv_isporuke");
				String nacinIsporukeID = request.getParameter("nacin_isporuke_id");
				if(naziv_isporuke != null && naziv_isporuke.trim().length() > 0 &&
						nacinIsporukeID != null && nacinIsporukeID.trim().length() > 0){
					if(naziv_isporuke.length() > 3){
						try {
							int nacin_isporuke_id = Integer.parseInt(nacinIsporukeID);
							DAO d = new DAO();
							NacinIsporuke naIsp = new NacinIsporuke(naziv_isporuke);
							d.updateNacinIsporuke(naIsp, nacin_isporuke_id);
							request.setAttribute("msg", "Uspešno ste promenili Način Isporuke!");
							request.getRequestDispatcher("admin.jsp").forward(request, response);
						} catch (Exception e) {
							request.setAttribute("msg", "GRESKA!");
							request.getRequestDispatcher("promeniIsporuku.jsp").forward(request, response);
						}
					}else{
						request.setAttribute("msg", "Naziv isporuke mora biti duži od 3 karaktera!");
						request.getRequestDispatcher("promeniIsporuku.jsp").forward(request, response);
					}
				}else{
					request.setAttribute("msg", "Morate popuniti sva polja!");
					request.getRequestDispatcher("promeniIsporuku.jsp").forward(request, response);
				}
		}else if(akcija.equals("Izmeni Dobavljaca")){
			String naziv_dobavljaca = request.getParameter("naziv_dobavljaca");
			String adresa_dobavljaca = request.getParameter("adresa_dobavljaca");
			String broj_telefona = request.getParameter("broj_telefona_dobavljaca");
			String grad = request.getParameter("grad");
			String dobavljacID = request.getParameter("dobavljac_id");
				if(naziv_dobavljaca != null && naziv_dobavljaca.trim().length() > 0 &&
						adresa_dobavljaca != null && adresa_dobavljaca.trim().length() > 0 &&
								broj_telefona != null && broj_telefona.trim().length() > 0 &&
										grad != null && grad.trim().length() > 0 &&
												dobavljacID != null && dobavljacID.trim().length() > 0){
					if(naziv_dobavljaca.length() > 1){
						if(adresa_dobavljaca.length() > 8){
							if(grad.length() > 1){
								try {
									int broj_telefona_dobavljaca = Integer.parseInt(broj_telefona);
									int dobavljac_id = Integer.parseInt(dobavljacID);
									DAO d = new DAO();
									Dobavljac dobavljac = new Dobavljac(broj_telefona_dobavljaca, naziv_dobavljaca, adresa_dobavljaca, grad);
									d.updateDobavljac(dobavljac, dobavljac_id);
									request.setAttribute("msg", "Uspešno ste izmenili Dobavljača!");
									request.getRequestDispatcher("admin.jsp").forward(request, response);
								} catch (Exception e) {
									request.setAttribute("msg", "Broj telefona mora biti Broj!");
									request.getRequestDispatcher("promeniDobavljaca.jsp").forward(request, response);
								}
							}else{
								request.setAttribute("msg", " Greska! Grad mora imati više od 1 karaktera!");
								request.getRequestDispatcher("promeniDobavljaca.jsp").forward(request, response);
							}
						}else{
							request.setAttribute("msg", "Adresa mora imati više od 8 karaktera!");
							request.getRequestDispatcher("promeniDobavljaca.jsp").forward(request, response);
						}
					}else{
						request.setAttribute("msg", "Naziv mora imati vise od jednog slova!");
						request.getRequestDispatcher("promeniDobavljaca.jsp").forward(request, response);
					}
				}else{
					request.setAttribute("msg", "Morate popuniti sva polja!");
					request.getRequestDispatcher("promeniDobavljaca.jsp").forward(request, response);
				}
		}//drugi uslov
		}
	}

}
