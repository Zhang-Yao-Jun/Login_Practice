<%--
  Created by IntelliJ IDEA.
  User: 张尧俊
  Date: 2019/3/12
  Time: 23:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
            <%
                String name =(String) session.getAttribute("name");
                String user = (String) session.getAttribute(name);
                if (name==null || user==null){
                    request.setAttribute("msg","请登录！");
                    request.getRequestDispatcher("login.jsp").forward(request,response);
                }

            %>
        <h3>欢迎用户[<%=name%>]登录本系统！</h3>
</body>
</html>
