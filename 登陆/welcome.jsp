<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/11/8
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>页面访问</title>
</head>
<body>
<jsp:include page = "firstWelcome.jsp"/>
<%
    Integer count = (Integer)application.getAttribute("count");
    if(count==null||count==0){
        out.print("欢迎访问!");
        count=1;
    }else{
        out.print("欢迎访问!");
        count++;
    }
    application.setAttribute("count",count );
%><br>
<%@include file="beginWelcome.jsp"%>
<br>
该页面访问量:<%=count%><hr>
</body>
</html>
