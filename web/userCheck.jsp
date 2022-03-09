<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="userCheck.css"/>
 
  </head>
  <body>
  <body>
<!-- 头部-->
<div class="top">
<p class="font">学生信息管理系统</p>
</div>
    <%      
            String id = new String(request.getParameter("username"));  
 
            String driverClass = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/user?serverTimezone=GMT%2B8&useUnicode=true&characterEncoding=utf-8";
            String username = "root";
            String password = "123456";
            Class.forName(driverClass); 
            Connection conn = DriverManager.getConnection(url,username,password);
            PreparedStatement pStmt = conn.prepareStatement("select * from information where id like ?");
            pStmt.setString(1,'%'+id+'%');
            ResultSet rs = pStmt.executeQuery();
     %>
     <!-- 内容-->
<div class="right">
<div class="table">
<div class="kuan"></div>
<%
if(rs.next()){
	%>
	
      <p>姓名：   <%out.println(rs.getString("username"));%></p>
      <p>年龄：   <%out.println(rs.getString("userage"));%></p>
      <p>性别：   <%out.println(rs.getString("gender"));%></p>
      <p>电话：   <%out.println(rs.getString("telephone"));%></p>
<%
}else {
%>
<div class="err">未查找到用户信息！！！</div>
<script type="text/javascript">
setTimeout(
"window.location.href='main.jsp';",3000);
</script>
<% }%>
<%
rs.close();
conn.close();
%>
</div>
</div>
</body>
</html>