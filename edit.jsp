<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.entities.*"%>
<%@page import="org.hibernate.*"%>
<%@page import="com.helper.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
	
	<%@include file="navbar.jsp"%>
	<br>
	<h1 class="text-uppercase">Edit your notes:</h1>

	<%
	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
	Session s = FactoryProvider.getFactory().openSession();

	Note note = (Note) s.get(Note.class, noteId);
	%>
	
	 <!--this is form-->
   <form action="UpdateServlet" method="post">
   <input value="<%=note.getId()%>" name="noteId" type="hidden"/>
   
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required name="title" type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter your note topic here" 
    value="<%=note.getTitle()%>" />
     
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
     <textarea name="content"  required id="content" placeholder="Enter your content here" class="form-control" style="height:300px;"><%=note.getContent() %>
     </textarea>
   
  <br>
  <button type="submit" class="btn btn-warning mx-auto">Save Changes</button>
</form>
	
	</div>
	
	
</body>
</html>