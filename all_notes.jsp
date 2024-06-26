<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.entities.*"%>
<%@page import="org.hibernate.*"%>
<%@page import="com.helper.FactoryProvider"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All notes: Note Taker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>


		<div class="row">
			<div class="col-12">

				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>
<!-- this is from the bootstrap cards -->
				<div class="card mt-3" >
					<img class="card-img-top m-3" style="max-width:100px;" src="img/notes.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle() %></h5>
						<p class="card-text"> 
						<%=note.getContent() %>
						</p>
						 
						<p><em>Last updated on:</em><br><b class="text-primary"><%=note.getAddedDate() %></b></p>
						
						<div class="container text-center">
						<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-success">Update</a>
						&nbsp;&nbsp;&nbsp;
						<a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
						</div>
					</div>
				</div>

				<%
				}
				s.close();
				%>


			</div>


		</div>



	</div>
</body>
</html>