<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/11/16
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购买</title>
</head>
<body>
<%
    Map books = (HashMap)session.getAttribute("books");
    String select = request.getParameter("select");
    if(select!=null) {
        if (select.equals("yes")) {
            books.clear();
        }
    }
    response.sendRedirect("/lookCar.jsp");
%>
</body>
</html>
