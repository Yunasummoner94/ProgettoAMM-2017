<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="it">
    <head> 
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Sara Valeria Scardigli">
        <meta name="keywords" content="login">
        
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
    <div id="header">
        <!--header contenente in titolo della pagina-->
            <c:set var="title" value="login" scope="request"/>
            <jsp:include page="header.jsp"/>
            
            <!--Barra di navigazione tra le pagine del sito-->
            <c:set var="page" value="login" scope="request"/>
            <jsp:include page="nav.jsp"/>
            
            <!--Area di logout-->
            <c:set var="page" value="login" scope="request"/>
            <jsp:include page="logoutarea.jsp"/>

            <!--Barra laterale persone e gruppi-->
            <c:set var="page" value="login" scope="request"/>
            <jsp:include page="leftsidebar.jsp"/>
    </div>
        <form action="pagina.php" method="post">
                <label for="username">Username</label>
                <input type="text" name="username"
                id="username" value="valore iniziale" />
                <br />
                <label for="pswd">Password</label>
                <input type="password" name="pswd? "
                id="pswd" value="oscurato" />
                <br>
                <input type="submit" value="Invio">
        </form>
    </body>
</html>