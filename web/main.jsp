<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="main.css"/>
</head>
<body>
<!-- 头部-->
<div class="top">
<p class="font">学生信息管理系统</p>
</div>
<!-- 内容-->
<div class="right">
<div class="text">
请输入查询的学生号<br><br>
<form action="userCheck.jsp" method="post"> 
学号:    <input type="text" name="username" style="height:20px;"/>   <input  type="submit" style="font-size:20px;" value="查询"/>
</form>
</div>
</div>
</body>
</html>