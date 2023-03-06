<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! String urname;String pwd;  %>
<%


Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String url ="jdbc:sqlserver://192.168.168.12:1433;databaseName=New_joinee_2022";
String username ="NewJoinee2022";
String password ="P@ssw0rd";
Connection con = DriverManager.getConnection(url,username,password);


	Statement st = con.createStatement();
	String query = "select * from abc";
	ResultSet rs = st.executeQuery(query);
	while(rs.next()){
		 urname =  rs.getString(1);	
		 pwd =  rs.getString(2);
		}
	
	
%>
<center>username :<%= urname  %><br><br>
	password : <%= pwd %><br><br></center> 
	
		

</body>
</html>