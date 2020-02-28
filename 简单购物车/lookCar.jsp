<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/10/30
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物车</title>
</head>
<body>
购物车的内容是:<hr>
<%
    Map books = (HashMap)session.getAttribute("books");
        out.print("商品名称"+books.keySet());
        out.print("商品数量"+books.values());
%>
<form action="buy.jsp">
    是否购买:<input name="select" type = "radio" value = "yes">是
    <input name ="select" type="radio" value = "no">否<br>
    <input type="submit" value="确认购买">
</form>
<a href ="Shop.jsp" >返回商城</a>
</body>
</html>
