<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="all_js_css.jsp"%>
</head>

<body>
	<div class="container">

		<%@ include file="navbar.jsp"%>
		<h1>Edit your note</h1>
		<br>
		<%
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Note note = (Note) s.get(Note.class, noteId);
		%>
		<form action="Update" method="post">
		
		<input value="<%= note.getId() %>" name="noteId" type="hidden"/>
			
			<div class="form-group">
				<label for="title">Note Title</label> <input required name="title"
					type="text" 
					class="form-control"
					 id="title"
					aria-describedby="emailHelp" 
					placeholder="Enter title"
					value="<%=note.getTitle()%>" />
			</div>
			
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required id="content" class="form-control"
					style="height: 300px" ;
   					 name="content"><%=note.getContent()%>
			   </textarea>	
   			<p ><b class="text-primary"><%=note.getAddedDate() %></b></p>
   			</div>
				
				<div class="container text-center">
					<button type="submit" class="btn btn-success">Save your note</button>
				</div>
		
		</form>
		
	</div>
</body>
</html>