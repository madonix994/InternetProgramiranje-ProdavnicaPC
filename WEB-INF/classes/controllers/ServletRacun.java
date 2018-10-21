package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

import rs.Artikal;
import rs.ArtikalRacun;
import rs.DAO;
import rs.Kupac;
import rs.Racun;
import rs.SviRacuni;


public class ServletRacun extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ServletRacun() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String akcija=request.getParameter("akcija");
		if(akcija!=null && akcija.length()>0){
			
			if(akcija.equals("detalji")){
				
				String racun_id=request.getParameter("racun_id");	
				
				if(racun_id!=null && racun_id.length()>0){
					
					try{
						
						int idracuna=Integer.parseInt(racun_id);
						DAO dao=new DAO();
						
						ArrayList<SviRacuni> detalji=dao.ispisRacunali(idracuna);
						SviRacuni svr=dao.ispisRacuna(idracuna);
						HttpSession sesija=request.getSession();
						
						sesija.setAttribute("detaljiobjekat",svr);
						sesija.setAttribute("detalji",detalji);
						request.getRequestDispatcher("detalji.jsp").forward(request, response);
						
					}catch(Exception e){
						
						
					}
					
					
				}else{
					
					//neka poruka
				}
				
			}if(akcija.equals("detaljiadmin")){
			

				
				String racun_id=request.getParameter("racun_id");	
				
				if(racun_id!=null && racun_id.length()>0){
					
					try{
						
						int idracuna=Integer.parseInt(racun_id);
						DAO dao=new DAO();
						
						ArrayList<SviRacuni> detalji=dao.ispisRacunali(idracuna);
						SviRacuni svr=dao.ispisRacuna(idracuna);
						HttpSession sesija=request.getSession();
						
						sesija.setAttribute("detaljiobjekat",svr);
						sesija.setAttribute("detalji",detalji);
						request.getRequestDispatcher("detaljiadmin.jsp").forward(request, response);
						
					}catch(Exception e){
						
						
					}
					
					
				}else{
					
					//neka poruka
				}
			}else if (akcija.equals("Izmeni Stanje")){
				
				String naziv_artikla=request.getParameter("naziv_artikla");
				String artikal_id=request.getParameter("artikal_id");
				String kolicina_artikla=request.getParameter("kolicina_artikla");
				String racun_id=request.getParameter("racun_id");	
				
				if(naziv_artikla!=null && naziv_artikla.length()>0 &&
						artikal_id!=null && artikal_id.length()>0 && 
					kolicina_artikla!=null && kolicina_artikla.length()>0 && 
					racun_id!=null && racun_id.length()>0){
					
					try{
						int idracuna=Integer.parseInt(racun_id);
						int kolicina=Integer.parseInt(kolicina_artikla);
						int brojsmanji=Integer.parseInt(artikal_id);
						
						kolicina=kolicina-brojsmanji;
						
					DAO dao=new DAO();
					ArrayList<SviRacuni> detalji=dao.ispisRacunali(idracuna);

					dao.updateStanje(kolicina, naziv_artikla);
					
					HttpSession sesija=request.getSession();
					
					sesija.setAttribute("detalji",detalji);
					
					
					request.getRequestDispatcher("detaljiadmin.jsp").forward(request, response);
					}catch(Exception e){
						
						request.setAttribute("msgp", "Mora biti broj!");
						request.getRequestDispatcher("detaljiadmin.jsp").forward(request, response);
						
					}
					
				}else{
					request.setAttribute("msgp", "Morate odabrati stanje kako bi bilo promenjeno!");
					request.getRequestDispatcher("detaljiadmin.jsp").forward(request, response);
				
					
				}
				
			}			
			
			
		}else{
			
			response.sendRedirect("index.jsp");
			
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String akcija=request.getParameter("akcija");
		
		if(akcija.equals("Potvrdite Kupovinu")){
			String nacin_isporuke_id=request.getParameter("nacin_isporuke_id");
			String radnik_id=request.getParameter("radnik_id");
			String kupac_id=request.getParameter("kupac_id");
			String ukupna_cena=request.getParameter("ukupna_cena");
			String status=request.getParameter("status");
			
			if(nacin_isporuke_id!=null && nacin_isporuke_id.length()>0 &&
					radnik_id!=null && radnik_id.length()>0 &&
							kupac_id!=null && kupac_id.length()>0 && 
								ukupna_cena!=null && ukupna_cena.length()>0 &&
										status!=null && status.length()>0){
				try {
					int nacin_isporuke_id_ni = Integer.parseInt(nacin_isporuke_id);
					int radnik_id_r = Integer.parseInt(radnik_id);
					int kupac_id_k = Integer.parseInt(kupac_id);
					int ukupnacena = Integer.parseInt(ukupna_cena);
						DAO dao = new DAO();
						Racun r = new Racun(radnik_id_r, kupac_id_k, nacin_isporuke_id_ni,ukupnacena,status, null);
						dao.insertRacun(r);
					
						HttpSession sesija=request.getSession();
						sesija.setAttribute("racun", r);
						request.getRequestDispatcher("Racun.jsp").forward(request, response);
					
				} catch (Exception e) {
					request.setAttribute("msg", "Morate Popuniti sva polja!");
					request.getRequestDispatcher("korpa.jsp").forward(request, response);
				}
				
			}else{
				request.setAttribute("msg", "Morate Popuniti sva polja!");
				request.getRequestDispatcher("korpa.jsp").forward(request, response);
			}
		}else if (akcija.equals("Azuriraj")){
			
			String ime_kupca = request.getParameter("ime_kupca");
			String prezime_kupca = request.getParameter("prezime_kupca");
			String adresa_kupca = request.getParameter("adresa_kupca");
			String username_kupca = request.getParameter("username_kupca");
			String password_kupca = request.getParameter("password_kupca");
			String password_kupca1 = request.getParameter("password_kupca1");
			String kupac_id = request.getParameter("kupac_id");
			
			if(ime_kupca!=null && ime_kupca.length()>0 &&
					prezime_kupca!=null && prezime_kupca.length()>0 &&
					adresa_kupca!=null && adresa_kupca.length()>0 &&
					username_kupca!=null && username_kupca.length()>0 &&
					password_kupca!=null && password_kupca.length()>0 &&
					password_kupca1!=null && password_kupca1.length()>0 &&
					kupac_id!=null && kupac_id.length()>0 
					){
				if(password_kupca.equals(password_kupca1)){
					
					try{
					DAO dao=new DAO();
					
					int idk=Integer.parseInt(kupac_id);
						
						dao.updateKupac(ime_kupca, prezime_kupca, adresa_kupca, username_kupca, password_kupca1, idk);
						
						Kupac k=dao.selectKupacById(idk);
						HttpSession sesija=request.getSession();
						
						sesija.setAttribute("ulogovan", k);
						
						sesija.setAttribute("msgr", "Uspesna izmena!");
						request.getRequestDispatcher("korisnik.jsp").forward(request, response);
					
					}catch(Exception e){
						
						request.setAttribute("msgr", "Greska ID mora biti broj");
						request.getRequestDispatcher("korisnik.jsp").forward(request, response);
						
					}	
					
					
					
				}else{
					request.setAttribute("msgr", "Greska Sifre nisu iste");
					request.getRequestDispatcher("korisnik.jsp").forward(request, response);
				}
				
				
			}else{
				
				request.setAttribute("msgr", "Morate popuniti sva polja");
				request.getRequestDispatcher("korisnik.jsp").forward(request, response);
			}
		}else if (akcija.equals("Promeni Status")){
			

			String racun_id=request.getParameter("racun_id");	
			String status = request.getParameter("status");
			
			if(racun_id!=null && racun_id.length()>0 && status!=null && status.length()>0){
				try{
					
					int idracuna=Integer.parseInt(racun_id);
				DAO dao=new DAO();
				HttpSession sesija=request.getSession();
				
				ArrayList<SviRacuni> detalji=dao.ispisRacunali(idracuna);

				SviRacuni svr=dao.ispisRacuna(idracuna);
				dao.updateRacun(status, idracuna);
				sesija.setAttribute("detaljiobjekat",svr);
				sesija.setAttribute("detalji",detalji);
				request.getRequestDispatcher("detaljiadmin.jsp").forward(request, response);
				}catch(Exception e){
					request.setAttribute("msgs", "ID mora biti broj!");
					request.getRequestDispatcher("detaljiadmin.jsp").forward(request, response);
					
				}
			}else{
				
				request.setAttribute("msgs", "Morate odabrati status kako bi bio promenjen!");
				request.getRequestDispatcher("detaljiadmin.jsp").forward(request, response);
			}
			
			
			
		}else if(akcija.equals("Zakljuci Posao")){

			String racun_id=request.getParameter("racun_id");	
			String status = request.getParameter("status");
			
			if(racun_id!=null && racun_id.length()>0 && status!=null && status.length()>0){
				try{
					
					int idracuna=Integer.parseInt(racun_id);
				DAO dao=new DAO();
				HttpSession sesija=request.getSession();
				
				ArrayList<SviRacuni> detalji=dao.ispisRacunali(idracuna);

				SviRacuni svr=dao.ispisRacuna(idracuna);
				dao.updateRacun(status, idracuna);
				sesija.setAttribute("detaljiobjekat",svr);
				sesija.setAttribute("detalji",detalji);
				request.setAttribute("msg", "USPESNO STE ZAKLJUCILI RACUN!");
				request.getRequestDispatcher("admin.jsp").forward(request, response);
				}catch(Exception e){
					request.setAttribute("msgs", "ID mora biti broj!");
					request.getRequestDispatcher("detaljiadmin.jsp").forward(request, response);
					
				}
			}else{
				
				request.setAttribute("msgs", "Morate odabrati status kako bi bio promenjen!");
				request.getRequestDispatcher("detaljiadmin.jsp").forward(request, response);
			}
			
			
			
		}
			
		
		
		
	}

}
