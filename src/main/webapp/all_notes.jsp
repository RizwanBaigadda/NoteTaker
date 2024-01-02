<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.entity.*"%>
<%@ page import="java.util.List"%>
<%@ page import="com.helper.*"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Query"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">

		<%@ include file="Navbar.jsp"%>
		<h2>All Notes</h2>

		<div class="row">
			<div class="col-12">
				<%
				SessionFactory sessionFactory = null;
				Session ses = null;
				try {
					sessionFactory = FactoryProvider.getfactory();
					ses = sessionFactory.openSession();
					Query query = ses.createQuery("from Note");
					List<Note> noteList = query.list();

					for (Note note : noteList) {
				%>
				<div class="card mt-3">
					<img class="card-img-top" style="max-width: 100px;" src="img/post-it.png" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						 	
						<div class = "container text-center">
						<a href="DeleteServlet?note_id1=<%=note.getId() %>" class="btn btn-danger">Delete</a>

						<a href="edit.jsp?note_id2=<%=note.getId() %>" class="btn btn-primary">update</a>
						
						</div>
						
					</div>
				</div>
				<%
					}
						
					
				} catch (Exception e) {
					// Handle any exceptions here
					e.printStackTrace();
				} finally{
					ses.close();
				}
				
				%>
			</div>
		</div>
	</div>
</body>
</html>
