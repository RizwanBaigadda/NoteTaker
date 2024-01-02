<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Note Taker</title>

<%@include file="all_js_css.jsp"%>
<style>
.container {
	position: relative;
	height: 100vh;
	background-image: url('img/notes_image.jpeg');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
}

.start-button {
	position: absolute;
	bottom: 20px;
	left: 50%;
	transform: translateX(-50%);
	background-color: #fff;
	padding: 10px 20px;
	border-radius: 5px;
	font-size: 20px;
	color: #000;
	cursor: pointer;
}

.content {
	text-align: center;
	margin-top: 100px;
}

</style>
</head>

<body>

	<div class="container">

		<%@include file="Navbar.jsp"%>
		<div class="content">
			<!-- <img alt="" class="img-fluid mx-auto" style="max-width: 400px;"
				src="img/notetakewebsite.jpeg"> -->

			<h2 style="color: #000;">Start Taking notes</h2>

			<!-- Add your content here -->
		</div>
		<a href="AddNote.jsp" class="start-button">Start</a>

	</div>

</body>

</html>
