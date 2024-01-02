package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.FactoryProvider;
import com.entity.*;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteServlet() {
        super();


    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		
		
   try {
	   
	   
	   int id = Integer.parseInt(request.getParameter("note_id1").trim());
	   
	   Session s = FactoryProvider.getfactory().openSession();
	   Transaction tr = s.beginTransaction();
	   
	   // getting entire object from note entitty wirth help of above id & given in delete method to delete entire object
	   Note note = (Note)s.get(Note.class, id);
	   

	   
	// delet take only object so by taking enrire object from above with id and  given to  delete to delete
	   s.delete(note);
	   tr.commit();
	   s.close();
	   
//	   response.sendRedirect(request.getContextPath() + "/all_notes.jsp");

	   response.sendRedirect("all_notes.jsp");
   }catch(Exception e) {
	   e.printStackTrace();
   }
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
