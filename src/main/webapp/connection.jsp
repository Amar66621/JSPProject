<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	Connection con = null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","Amar2003");
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	if("POST".equalsIgnoreCase(request.getMethod())){
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		
		
		PreparedStatement pre = null;
		int result = 0;
		
		try{
			
			String sql = "INSERT INTO register (name, email, password, gender) VALUES (?, ?, ?, ?)";
			pre = con.prepareStatement(sql);
			pre.setString(1, name);
			pre.setString(2, email);
			pre.setString(3,password);
			pre.setString(4, gender);
			
			
			result = pre.executeUpdate();
			
			if(result>0){
				out.println("<h2>Registered successfully</h2>");
			}else{
				out.println("<h2>Registered not successfully</h2>");
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
</body>
</html>