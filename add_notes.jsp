<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="container">
    
    <%@include file="navbar.jsp" %>
    <br>
    <h1>This is add notes page.</h1>
    
    
   <!--this is form-->
   <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required name="title" type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter your note topic here">
     
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
     <textarea name="content"  required id="content" placeholder="Enter your content here" class="form-control" style="height:300px;"></textarea>
   
  <br>
  <button type="submit" class="btn btn-success">Submit</button>
</form>
    
    </div>

</body>
</html>