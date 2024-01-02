package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.FactoryProvider;
import org.hibernate.*;
import com.entity.*;

import java.util.*;

public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public updateServlet() {
        super();


    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
		
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		int id = Integer.parseInt(request.getParameter("noteid").trim());


//		int id = Integer.parseInt(request.getParameter("note_id2").trim());
		
		Session s = FactoryProvider.getfactory().openSession();
		Transaction tr = s.beginTransaction();
		
		Note note = s.get(Note.class, id);

		
		note.setTitle(title);
		note.setContent(content);
		note.setAdddate(new Date());

		
		tr.commit();
		s.close();
		
		response.sendRedirect("all_notes.jsp");
		
	}

}
