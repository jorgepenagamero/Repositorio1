
<%@page import =" beans.CustomerBean" %>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : admin1
    Created on : Jul 7, 2015, 7:16:47 AM
    Author     : GAMERO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<% 
        ArrayList <CustomerBean> customerList = new ArrayList <CustomerBean>();
        customerList.add(new CustomerBean("David", "Hefflinger"));
        customerList.add(new CustomerBean("jose", "stevenson"));
        customerList.add(new CustomerBean("Arigami", "Nakoto"));
        customerList.add(new CustomerBean("TOi", "Funanimation"));
        customerList.add(new CustomerBean("froue", "Funanimation"));
        customerList.add(new CustomerBean("qwerqe", "Funanimation"));
        customerList.add(new CustomerBean("loiiu", "Funanimation"));
        session.setAttribute("customerList", customerList);
    %>

<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>JSTL FOR EACH</h1>

        <table border="1" cellpadding="1" cellspacing="0">
            <thead>
                <tr>
                    <th>First name</th>
                    <th>Last Name</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="customer" items="${sessionScope.customerList}">
                    <tr>
                        <td>${customer.firstName}</td>
                        <td>${customer.lastName}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
