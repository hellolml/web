<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/11/14
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成语接龙</title>
</head>
<body>
    <%
        PrintWriter printWriter = response.getWriter();
        List<Character> chengyus = (ArrayList)session.getAttribute("chengyus");
        if(chengyus==null){
            chengyus = new ArrayList<>();
            session.setAttribute("chengyus", chengyus);
        }
            String chengyu = request.getParameter("chengyu");
        int flag1 = 0;
        if(chengyu.length()<4){
            flag1++;
            out.print("输入错误!请输入一个成语!");
            printWriter.println("<a href ='chengyujie.jsp'>重新输入</a>");
        }
        if(flag1==0) {
            for (int i = 0; i < chengyu.length(); i++) {
                chengyus.add(chengyu.charAt(i));
            }
            session.setAttribute("chengyus", chengyus);
            chengyus = (ArrayList) session.getAttribute("chengyus");
            response.sendRedirect("/chengyus2.jsp");
        }
    %>
</body>
</html>
