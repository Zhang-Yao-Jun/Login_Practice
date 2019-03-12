<%--
  Created by IntelliJ IDEA.
  User: 张尧俊
  Date: 2019/3/12
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>check</title>
</head>
<body>
         <%
             String name = request.getParameter("username");
             String pass = request.getParameter("password");
             String user = (String) session.getAttribute(name);
             if (name==null || user==null){
                 request.setAttribute("msg","请登录！");
                 request.getRequestDispatcher("login.jsp").forward(request,response);
             }else if (name.equals(pass)){
                 session.setAttribute("name",name);
                 request.getRequestDispatcher("success.jsp").forward(request,response);
             }else{
                 request.setAttribute("msg","用户名或密码错误！");
                 request.getRequestDispatcher("login.jsp").forward(request,response);
             }
         %>
</body>
</html>
