<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes : Note Taker</title>
<%@ include file="all_js_css.jsp"%>
<link href="css/style.css" rel="stylesheet" />
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@ include file="navbar.jsp"%>
		<h1 class="text-uppercase">All notes</h1>
	</div>
	<div class="row">

		<div class="col-12">

			<%
			Session s = FactoryProvider.getFactory().openSession();
			Query q = s.createQuery("from Note");
			List<Note> list = q.list();
			for (Note note : list) {
			%>

			<div class="card mt-3">
				<img class="card-img-top m-4" style="max-width: 50px"
					src="image/note.png" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title"><b><%=note.getTitle()%></b></h5>
					<p class="card-text"><%=note.getContent()%></p>
					<p><b><%=note.getAddedDate() %></b></p>
					<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a> 
					<a href="#" class="btn btn-primary">Update</a>
				</div>
			</div>

			<%
			}

			s.close();
			%>

		</div>

	</div>

</body>
</html>