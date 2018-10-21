package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rs.DAO;
import rs.Forma;

public class ServletForma extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public ServletForma() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String akcija = request.getParameter("akcija");
			if(akcija != null && akcija.trim().length() > 0){
				
			}else{
				response.sendRedirect("index.jsp");
			}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String akcija = request.getParameter("akcija");
		if(akcija != null && akcija.trim().length() > 0){
			if(akcija.equals("Posalji")){
				String ime = request.getParameter("ime");
				String prezime = request.getParameter("prezime");
				String email = request.getParameter("email");
				String naslov_poruke = request.getParameter("naslov_poruke");
				String poruka = request.getParameter("poruka");
				
				if(ime != null && ime.trim().length() > 0 &&
						prezime != null && prezime.trim().length() > 0 &&
							email != null && email.trim().length() > 0 &&
								naslov_poruke != null && naslov_poruke.trim().length() > 0 &&
									poruka != null && poruka.trim().length() > 0){
					
					if(ime.length() > 2){
						if(prezime.length() > 1){
							if(naslov_poruke.length() > 3 && naslov_poruke.length() < 26){
								if(poruka.length() > 10){
									
									DAO d = new DAO();
									Forma f = new Forma(ime, prezime, email, naslov_poruke, poruka);
									d.insertForma(f);
									
									request.setAttribute("msg", "Vaša poruka je uspešno poslata! Hvala Vam! Vaš Aviato PC Shop.");
									request.getRequestDispatcher("kontakt.jsp").forward(request, response);
									
								}else{
									request.setAttribute("msgNaslov", "Greška! Poruka mora imati više od 10 karaktera. Pokušajte ponovo.");
									request.getRequestDispatcher("kontakt.jsp").forward(request, response);
								}
							}else{
								request.setAttribute("msgNaslov", "Greška! Naslov mora biti od 5 do 25 karaktera. Pokušajte ponovo. Vaš Aviato PC Shop.");
								request.getRequestDispatcher("kontakt.jsp").forward(request, response);
							}
						}else{
							request.setAttribute("msgPrezime", "Greška! Prezime mora biti veće od 2 karaktera. Pokušajte ponovo.");
							request.getRequestDispatcher("kontakt.jsp").forward(request, response);
						}
					}else{
						request.setAttribute("msgIme", "Greška! Ime mora biti veće od 3 karaktera. Pokušajte ponovo.");
						request.getRequestDispatcher("kontakt.jsp").forward(request, response);
					}
					
				}else{
					request.setAttribute("msg", "Greška! Morate popuniti sva polja. Pokušajte ponovo. Vaš Aviato PC Shop.");
					request.getRequestDispatcher("kontakt.jsp").forward(request, response);
				}
			}//drugi uslov!
		}else{
			response.sendRedirect("index.jsp");
		}
	}

}
