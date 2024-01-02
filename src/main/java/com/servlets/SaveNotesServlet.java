package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.*;
import com.helper.FactoryProvider;

public class SaveNotesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SaveNotesServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
		
		
		try {
			
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Note n1 = new Note(title, content, new Date());
//			n1.setTitle(title);
//			n1.setContent(content);	
//			n1.setAdddate(new Date());
////			n1.setId(18);
			Session ses = FactoryProvider.getfactory().openSession();
			
			Transaction tr = ses.beginTransaction();
			ses.save(n1);
			tr.commit();
			ses.close();
			
			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style= 'text-align : center;'>Data Has been Added to Database</h1>");
			out.println("<h1 style= 'text-align : center;'><a href = 'all_notes.jsp'>View All Notes</h1>");
		}catch(Exception e) {
			e.printStackTrace();
		}

	}

}
