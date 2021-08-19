<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="all_js_css.jsp"%>
<link href="css/style.css" rel="stylesheet" />
<title>Edit</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@ include file="navbar.jsp"%>
		<h1>Edit your note</h1>
		
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note)s.get(Note.class, noteId);
		
		%>
		<form action="UpdateServlet" method="post">
       
            <input value="<%=note.getId() %>" name="noteId" type="hidden"/>
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input 
				name="title"
				required type="text"
				class="form-control" 
				id="title" 
				aria-describedby="emailHelp"
				placeholder="Enter here" 
				value="<%= note.getTitle() %>" />
			</div>

			<div class="form-group">
				<label for="content">Note content</label>
				<textarea 
				name="content"
				required id="content" 
				placeholder="Enter your content"
				class="form-control"
				style="height: 300px"><%=note.getContent() %></textarea>
			</div>
			<button type="submit" class="btn btn-success">Save your note</button>
		</form>
		
	</div>
</body>
</html>