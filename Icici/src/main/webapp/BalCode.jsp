<%@ page import="java.sql.*"%>
<table border="1" align="center">
	<% 
try 
{ 
String accountno=request.getParameter("num"); 
String username=request.getParameter("name"); 
String password=request.getParameter("pwd"); 

Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank"); 
PreparedStatement ps=con.prepareStatement("select * from account where accountno=? and username=? and password=?"); 
ps.setString(1,accountno); 
ps.setString(2,username); 
ps.setString(3,password); 

ResultSet rs=ps.executeQuery(); 

ResultSetMetaData rss=rs.getMetaData(); 

int n=rss.getColumnCount();  // n=7 

for(int i=1;i<=n;i++)   //rss.  

out.println("<td> <font color=blue size=3> "+"<br>"+rss.getColumnName(i)); 

out.println("<tr>"); 

while(rs.next()) 
{ 
for(int i=1;i<=n;i++) 

out.println("<td><br> "+rs.getString(i)); 
out.println("<tr>"); 
} 
out.println("</table>"); 

} 
catch(Exception ex) 
{ 
System.out.println(ex); 
} 
%>
</table>
</body>