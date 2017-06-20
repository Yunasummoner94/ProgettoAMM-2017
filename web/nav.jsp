<%-- 
    Document   : nav
    Created on : 21-apr-2017, 16.06.28
    Author     : sarav
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav>
    <ol>
        <li <c:if test="${page=='Bacheca'}">class="active"</c:if>><a href="Bacheca.jsp">Bacheca</a></li>
        <li <c:if test="${page=='Profilo'}">class="active"</c:if>><a href="Profilo.jsp">Profilo</a></li>
        <li <c:if test="${page=='Login'}">class="active"</c:if>><a href="Login.jsp">Login</a></li>
        <li <c:if test="${page=='Descrizione'}">class="active"</c:if>><a href="Descrizione.jsp">Descrizione</a></li>
    </ol>
</nav>
