<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add your Notes Here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="Navbar.jsp"%>
		<br>
		<h2>Add your Notes Here</h2>
		<br>

		<!-- note forms -->
		<form action = "SaveNotesServlet" method = "post">
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
				   name ="title"
					class="form-control"  
					id="title" 
					aria-describedby="emailHelp"
					placeholder="Enter Here"/>
			</div>

			 <div class="form-group">
    <label for="control">Note Content</label>
    <textarea 
    name="content"
    class="form-control"
     id="content"
      placeholder="Enter your Content"
       style="height: 250px;">
       </textarea>
  </div>
			
			<button type="submit" class="btn btn-primary">Add</button>
		</form>


	</div>


</body>
</html>