<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/11/14
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成语</title>
</head>
<body>
<%
    PrintWriter printWriter  = response.getWriter();
    ArrayList chengyus = (ArrayList) session.getAttribute("chengyus");
    int flag = 0;
    if(chengyus.size()<=4){
        response.sendRedirect("/chengyujie.jsp");
    }
        for (int i = 0; i < chengyus.size() - 1&&chengyus.size()>4; i++) {
            if (!chengyus.get(chengyus.size() - 5).equals(chengyus.get(chengyus.size() - 4))) {
                flag++;
                out.print("成语错误,游戏结束!");
                for (int j = 0;j<chengyus.size();j++){
                    out.print(chengyus.get(j));
                    if ((j+1)%4==0) {
                        out.print("->");
                    }
                }
                chengyus.clear();
                printWriter.println("<a href ='chengyujie.jsp'>返回</a>");
            }
        }
    if(flag==0) {
        out.print("成语正确!请继续!");
        for (int j = 0;j<chengyus.size();j++){
            out.print(chengyus.get(j));
            if ((j+1)%4==0) {
                out.print("->");
            }
        }
        printWriter.println("<a href ='chengyujie.jsp'>继续</a>");
    }
%>
</body>
</html>
