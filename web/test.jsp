<%-- 
    Document   : test
    Created on : Jul 21, 2020, 1:45:06 PM
    Author     : PC
--%>

<%@page import="model.Image"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${images}" var="x">
            <img src="${x.linkImage}" alt="${x.linkImage}"/>
        </c:forEach>  
    </body>
</html>
