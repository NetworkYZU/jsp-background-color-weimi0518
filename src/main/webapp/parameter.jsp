<%-- 
    Document   : random
    Created on : Sep 23, 2018, 8:44:44 PM
    Author     : lendle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="refresh" content="1">
    </head>
    <%
        String color="blue";
        String [] colors=new String[]{"skyblue", "gray", "pink", "orange", "brown", "green"};
        String parameter=request.getParameter("color");
        if(parameter!=null){
            color=parameter;
        }
        else{
            color=colors[(int)(Math.random()*1000%colors.length)];
        }
    %>
    <body bgcolor="<%=color%>">
        <h1>Hello World!</h1>
    </body>
</html>
