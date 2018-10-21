package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import rs.Artikal;
import rs.DAO;
import rs.Kupac;


/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesija=request.getSession();
		String akcija=request.getParameter("akcija");
		if(akcija!=null && akcija.length()>0){
			
			if(akcija.equals("OdjaviSe")){
				
				
				sesija.invalidate();
					
				request.getRequestDispatcher("prijava.jsp").forward(request, response);
				
			}else if (akcija.equals("isprazni")) {
				
				sesija.removeAttribute("lk");
				sesija.removeAttribute("lkk");
				request.getRequestDispatcher("proizvodi.jsp").forward(request, response);
			
			}else if(akcija.equals("pregled")){
				
				request.getRequestDispatcher("korpa.jsp").forward(request, response);
				
			}else if(akcija.equals("izbaci")){
				
				
				String br=request.getParameter("br");
				
				if( br!=null && br.length()>0){
					
					try{
					
						int broj=Integer.parseInt(br);
					
					DAO dao=new DAO();
					
					ArrayList<Artikal> lk=(ArrayList<Artikal>)sesija.getAttribute("lk");
					if(lk==null)
						lk=new ArrayList<Artikal>();
					
					lk.remove(broj);
					
					sesija.setAttribute("lk", lk);
					
					request.getRequestDispatcher("proizvodi.jsp").forward(request, response);
					}catch(Exception e){
						
						request.setAttribute("msgr", "Mora biti broj");
						request.getRequestDispatcher("proizvodi.jsp").forward(request, response);
					}
					
				}
				
							
			}else if(akcija.equals("izbacikorpa")){

				String br=request.getParameter("br");
				
				if( br!=null && br.length()>0){
					
					try{
					
						int broj=Integer.parseInt(br);
					
					DAO dao=new DAO();
					
					ArrayList<Artikal> lk=(ArrayList<Artikal>)sesija.getAttribute("lk");
					if(lk==null)
						lk=new ArrayList<Artikal>();
					
					lk.remove(broj);
					
					sesija.setAttribute("lk", lk);
					
					request.getRequestDispatcher("korpa.jsp").forward(request, response);
					}catch(Exception e){
						
						request.setAttribute("msgr", "Mora biti broj");
						request.getRequestDispatcher("proizvodi.jsp").forward(request, response);
					}
					
				}
				
			}
			
		}else{
			response.sendRedirect("index.jsp");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
String akcija=request.getParameter("akcija");
		
		if(akcija.equals("UlogujSe")){
			
			
			String username_kupca=request.getParameter("username_kupca");
			String password_kupca=request.getParameter("password_kupca");
			
			if(username_kupca !=null && username_kupca.length()>0 &&
					password_kupca !=null && password_kupca.length()>0){
				
				
				DAO dao=new DAO();
				Kupac k=dao.getKupacByImePass(username_kupca, password_kupca);
				
				if(k!=null){
					
					HttpSession sesija=request.getSession();
					sesija.setAttribute("ulogovan", k);
					
					request.setAttribute("msg", "Uspesna Prijava!");
					request.getRequestDispatcher("prijava.jsp").forward(request, response);
					
					
				}else{
				
					request.setAttribute("msg", "Pogresan Username ili password");
					request.getRequestDispatcher("prijava.jsp").forward(request, response);
				}
				
				
			}else{
				request.setAttribute("msg", "Popunite sve podatke");
				request.getRequestDispatcher("prijava.jsp").forward(request, response);
				}
			
			
			
		}else if (akcija.equals("RegistrujSe")) {
			
			
			String ime_kupca = request.getParameter("ime_kupca");
			String prezime_kupca = request.getParameter("prezime_kupca");
			String adresa_kupca = request.getParameter("adresa_kupca");
			String username_kupca = request.getParameter("username_kupca");
			String password_kupca = request.getParameter("password_kupca");
			String password_kupca1 = request.getParameter("password_kupca1");

			if(ime_kupca!=null && ime_kupca.length()>0 &&
					prezime_kupca!=null && prezime_kupca.length()>0 &&
					adresa_kupca!=null && adresa_kupca.length()>0 &&
					username_kupca!=null && username_kupca.length()>0 &&
					password_kupca!=null && password_kupca.length()>0 &&
					password_kupca1!=null && password_kupca1.length()>0
					){
				if(password_kupca.equals(password_kupca1)){
					
					DAO dao=new DAO();
					if(!dao.getKupacByUsername(username_kupca)){
						
	Kupac k=new Kupac(ime_kupca, prezime_kupca, adresa_kupca, username_kupca, password_kupca);
						dao.insertKupac(k);
						
						request.setAttribute("msgr", "Mozete se logovati. Uspesna registracija naloga:" +username_kupca);
						request.getRequestDispatcher("prijava.jsp").forward(request, response);
						
					}else{
						request.setAttribute("msgr", "Zauzet username");
						request.getRequestDispatcher("prijava.jsp").forward(request, response);
						
					}
					
					
				}else{
					request.setAttribute("msgr", "Greska Sifre nisu iste");
					request.getRequestDispatcher("prijava.jsp").forward(request, response);
				}
				
				
			}else{
				
				request.setAttribute("msgr", "Morate popuniti sva polja");
				request.getRequestDispatcher("prijava.jsp").forward(request, response);
			}
			
		}else if (akcija.equals("Kupi")) {
			
			String artikal_id=request.getParameter("artikal_id");
			if(artikal_id !=null && artikal_id.length()>0){
				
				try{
					int id=Integer.parseInt(artikal_id);
					
				HttpSession sesija=request.getSession();
				DAO dao=new DAO();
				
				ArrayList<Artikal> lk=(ArrayList<Artikal>)sesija.getAttribute("lk");
				if(lk==null)
					lk=new ArrayList<Artikal>();
				Artikal a=dao.getArtikalByID(id);
				lk.add(a);
				
				sesija.setAttribute("lk", lk);
				
				request.getRequestDispatcher("proizvodi.jsp").forward(request, response);
				}catch(Exception e){
					
					request.setAttribute("msgr", "Mora biti broj");
					request.getRequestDispatcher("proizvodi.jsp").forward(request, response);
				}
				
			}
			
			
			
		}
		
		
		
	}

}
