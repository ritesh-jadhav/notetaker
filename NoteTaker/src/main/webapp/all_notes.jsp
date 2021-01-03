<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>all notes</title>
<%@ include file="all_js_css.jsp" %>
</head>
<body>
     <div class="container">
       <%@ include file="navbar.jsp" %>
       <br>
       <h1 class="text-uppercase">All notes</h1>
       
      <div class="row">
       <div class="col-12">
       <%
 		Session s=FactoryProvider.getFactory().openSession();
 		Query q= s.createQuery("from Note");
 		List<Note>list=q.list();
 		for(Note n:list)
 		{%> 
 		
 		<div class="card mt-3" >
  <img class="card-img-top m-4 mx-auto"  style="max-width:60px" src="image/img.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%= n.getTitle() %>></h5>
    <p class="card-text"><%=n.getContent() %></p>
    	<div class="container text-center">
    	<a href="DeleteServlet?note_id=<%= n.getId() %>" class="btn btn-danger">Delete</a>
      <a href="edit.jsp?note_id=<%= n.getId() %>" class="btn btn-primary">Update</a>
      
        </div>
  </div>
</div>
 		
 		<% 
 			out.println(n.getId()+" : "+n.getTitle()+"<br>");
 		}
 		s.close();
 		%>
       </div>
      </div>
 
 		
 
 
     </div>
</body>
</html>