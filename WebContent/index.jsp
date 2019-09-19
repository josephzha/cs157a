<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import= "java.sql.*" %>
<%@ page import= "javax.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM friends");
while(rs.next()){
	out.println(rs.getString(2)+" " +rs.getInt(3));
}
%>

</body>
</html>