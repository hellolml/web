<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/11/14
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物车</title>
</head>
<body>
<form action = "/servlets/Car">
    商品类容:<br>
    javase<a href="javase.jsp">查看书本信息</a><br>
    javaee<a href="javaee.jsp">查看书本信息</a><br>
    c++   <a href="cpp.jsp">查看书本信息</a><br>
    python<a href="python.jsp">查看书本信息</a><br>
    请您输入要加入购物车的书本:<input name = "book" type = "text"><br>
    请您输入此书的数量:      <input name="number" type = "text"><br>
    <input type="submit" value ="添加到购物车并查看"><br>
</form>
</body>
</html>
