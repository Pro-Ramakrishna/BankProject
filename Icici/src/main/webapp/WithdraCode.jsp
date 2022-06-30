<%@ page import="java.sql.*"%>
<%
String accountno=request.getParameter("num");
String username=request.getParameter("name");
String password=request.getParameter("pwd");
String amount=request.getParameter("amt");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
	PreparedStatement ps=con.prepareStatement("update  account set Amount=amount-? where AccountNo=? and Amount>?");
	ps.setString(1, amount);
	ps.setString(2,accountno);
	ps.setString(3,amount);
	int i=ps.executeUpdate();
	if(i>0)
	{
	out.print(amount+" amount debited");
	con.close();
	}
	else
	{
		out.print("insufficient balance in your account");
	}
}
catch(Exception ex)
{
	out.print(ex);
}
%>
