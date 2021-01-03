<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Note Taker : HomePage</title>
<%@include file="all_js_css.jsp" %>
</head>


<body>
	
	<div class="container">
  <%@ include file="navbar.jsp" %>
  <br>
  <h1>Please fill Note Details  </h1>
  <!--  THis is add form-->
  <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required  name="title" type="text"
     class="form-control" id="title" aria-describedby="emailHelp" 
     placeholder="Enter title">
    
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea required id="content" 
    placeholder="keep writing" 
    class="form-control"
    style="height:300px";
    name="content"
    ></textarea>
  </div>
<div class="container text-center" >
  <button type="submit" class="btn btn-primary">Add</button>
</div>
</form>
  </div>
</body>
</html>