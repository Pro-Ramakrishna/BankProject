<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String username=request.getParameter("name"); 
String password=request.getParameter("pwd"); 
String repassword=request.getParameter("pwd1"); 
String amount=request.getParameter("amt"); 
String accountno=request.getParameter("num"); 
String address=request.getParameter("Add"); 
String phone=request.getParameter("phn"); 
try{ 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank"); 
PreparedStatement ps=con.prepareStatement("insert into account values(?,?,?,?,?,?,?)"); 
ps.setString(1,username); 
ps.setString(2,password); 
ps.setString(3,repassword); 
ps.setString(4,amount); 
ps.setString(5,accountno); 
ps.setString(6,address); 
ps.setString(7,phone); 
if(password.equals(repassword))
		{
	int i=ps.executeUpdate(); 
	out.print(i+"One Record has been inserted "); 
	con.close(); 
		}
else
{
	out.print("make sure entered passwords are same ");
}
}
catch(Exception ex){ 
out.print(ex); 
} 

%>
</body>
</html>

