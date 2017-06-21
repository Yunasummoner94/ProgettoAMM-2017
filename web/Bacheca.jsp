<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head> 
        <title>Bacheca</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Sara Valeria Scardigli">
        <meta name="keywords" content="bacheca">
        
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
        <div id="header">
            <!--header contenente il titolo della pagina-->
            <c:set var="title" value="Bacheca" scope="request"/>
            <jsp:include page="header.jsp"/>
            
            <!--Barra di navigazione tra le pagine del sito-->
            <c:set var="page" value="Bacheca" scope="request"/>
            <jsp:include page="nav.jsp"/>
            
            <!--Area di logout-->
            <c:set var="page" value="Bacheca" scope="request"/>
            <jsp:include page="logoutarea.jsp"/>

            <!--Barra laterale persone e gruppi-->
            <c:set var="page" value="Bacheca" scope="request"/>
            <jsp:include page="leftsidebar.jsp"/>
        </div>

        <div id="posts">
                <c:forEach var="post" items="${posts}">
                    <div class="post">
                        <c:if test="${post.postType == 'TEXT'}">
                             <p>${post.content}</p>
                        </c:if>
                        <c:if test="${post.postType == 'IMAGE'}">
                            <img alt="Post con foto" src="${post.content}">
                        </c:if>
                    </div>
                </c:forEach>
            <br><br><br>
        </div>
        
    </body>
</html>