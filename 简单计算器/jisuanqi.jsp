<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/11/28
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算器</title>
</head>
<body>
计算器<hr>
<jsp:useBean id="calculator" class="servlets.Calucter" scope="request"/>
<jsp:setProperty name="calculator" property="*"/>
<form action = "jisuanqi.jsp" method="post">
    第一个参数<input type="text" name = "num1" required="required"><br>
    <select name="suan" >
        <option value="jia">+</option>
        <option value="jian">-</option>
        <option value="cheng">*</option>
        <option value="chu">/</option>
    </select><br>
    第二个参数<input type="text" name="num2"  required="required"><br>
    <input type="submit" value="计算">
</form>
    <%
        if(request.getParameter("suan")!=null) {
            String suan1 = request.getParameter("suan");
            if (suan1.equals("chu") && calculator.getNum2() == 0) {
                out.print("运算出现错误,除数不能为零!");
            } else {
                out.print("运算结果:");
                out.print(calculator.getNum1());
                if (suan1.equals("jia")) {
                    out.print("+");
                } else if (suan1.equals("jian")) {
                    out.print("-");
                } else if (suan1.equals("cheng")) {
                    out.print("*");
                } else if (suan1.equals("chu")) {
                    out.print("/");
                }
                out.print(calculator.getNum2());
                out.print("=");
                out.print(calculator.getSum());
            }
        }

    %>
</body>
</html>
