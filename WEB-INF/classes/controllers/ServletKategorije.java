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
import rs.Tip_artiklaArtikal;


public class ServletKategorije extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ServletKategorije() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String akcija=request.getParameter("akcija");
		if(akcija!=null && akcija.length()>0){
			
			if(akcija.equals("Kategorije")){
				
				String tip_artikla_id=request.getParameter("tip_artikla_id");
				if(tip_artikla_id !=null && tip_artikla_id.length()>0){
					
					try{
						int id=Integer.parseInt(tip_artikla_id);
				
						
						DAO dao=new DAO();
						ArrayList<Tip_artiklaArtikal> li=new ArrayList<Tip_artiklaArtikal>();
						li=dao.selectKategorije(id);
						HttpSession sesija=request.getSession();
						sesija.setAttribute("kategorije", li);
						request.getRequestDispatcher("Kategorije.jsp").forward(request, response);

						
					}catch(Exception e){
						request.setAttribute("msg", "ID mora biti broj");
						request.getRequestDispatcher("proizvodi.jsp").forward(request, response);
					}
					}else{
						
						request.setAttribute("msg", "Mora biti odabran id");
						request.getRequestDispatcher("proizvodi.jsp").forward(request, response);
					}
			}else if(akcija.equals("Kupi")){
				
				
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
					
					request.getRequestDispatcher("Kategorije.jsp").forward(request, response);
					}catch(Exception e){
						
						request.setAttribute("msgr", "Mora biti broj");
						request.getRequestDispatcher("Kategorije.jsp").forward(request, response);
					}
					
				}
				
				
			}else if(akcija.equals("KupiPretraga")){
				

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
					
					request.getRequestDispatcher("Pretraga.jsp").forward(request, response);
					}catch(Exception e){
						
						request.setAttribute("msgr", "Mora biti broj");
						request.getRequestDispatcher("Kategorije.jsp").forward(request, response);
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
	
			
			if(akcija.equals("Pretrazi")){
				
			String naziv_artikla=request.getParameter("naziv_artikla");
			if(naziv_artikla !=null && naziv_artikla.length()>0){	
				
			DAO dao=new DAO();
			ArrayList<Tip_artiklaArtikal> lista=new ArrayList<Tip_artiklaArtikal>();
	
			lista=dao.selectPoImenu(naziv_artikla);
			
			HttpSession sesija=request.getSession();
			
			sesija.setAttribute("nazivi", lista);
			request.getRequestDispatcher("Pretraga.jsp").forward(request, response);
				
			}else{
				
				request.setAttribute("msgd", "Unesite tekst");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		
			}
			
			
	}

	
	
}
