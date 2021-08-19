<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title><%@ include file="all_js_css.jsp"%>
<link href="css/style.css" rel="stylesheet" />
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@ include file="navbar.jsp"%>
		<h1>Please fill your note detail</h1>

		<!-- This is a add form  -->

		<form action="SaveNoteServlet" method="post">

			<div class="form-group">
				<label for="title">Note Title</label> 
				<input 
				name="title"
				required type="text"
				class="form-control" 
				id="title" 
				aria-describedby="emailHelp"
				placeholder="Enter here" />
			</div>

			<div class="form-group">
				<label for="content">Note content</label>
				<textarea 
				name="content"
				required id="content" 
				placeholder="Enter your content"
				class="form-control"
				style="height: 300px"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">Add</button>
		</form>

	</div>
</body>
</html>