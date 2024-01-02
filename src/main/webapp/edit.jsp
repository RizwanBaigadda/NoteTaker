<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.*, org.hibernate.*, com.entity.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Note</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>


	<div class="container">

		<%@ include file="Navbar.jsp"%>
		<h2>All Notes</h2>


		<%
		int noteid = Integer.parseInt(request.getParameter("note_id2").trim());

		Session s = FactoryProvider.getfactory().openSession();
		Transaction tr = s.beginTransaction();

		// getting entire object from note entitty wirth help of above id & given below form  to update entire object
		Note note = (Note) s.get(Note.class, noteid);
		%>

		<!-- note forms -->
		<form action="updateServlet" method="post">
			<input value="<%=note.getId()%>" name="noteid" type="hidden" />
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					name="title" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here"
					value="<%=note.getTitle()%>" />

			</div>

			<div class="form-group">
				<label for="control">Note Content</label>
				<textarea name="content" class="form-control" id="content"
					placeholder="Enter your Content" style="height: 250px;"><%=note.getContent()%>
       </textarea>
			</div>

			<button type="submit" class="btn btn-primary">Save</button>
		</form>


	</div>

</body>
</html>