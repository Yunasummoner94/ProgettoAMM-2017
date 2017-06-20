<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head> 
        <title>Profilo</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Sara Valeria Scardigli">
        <meta name="keywords" content="profilo">
        
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
        <div id="header">
            <!--header contiene il titolo della pagina-->
            <c:set var="title" value="Profilo" scope="request"/>
            <jsp:include page="header.jsp"/>
            
            <!--Barra di navigazione tra le pagine del sito-->
            <c:set var="page" value="Profilo" scope="request"/>
            <jsp:include page="nav.jsp"/>

            <!--Area di logout-->
            <c:set var="page" value="Profilo" scope="request"/>
            <jsp:include page="logoutarea.jsp"/>

            <!--Barra laterale persone e gruppi-->
            <c:set var="page" value="Profilo" scope="request"/>
            <jsp:include page="leftsidebar.jsp"/>
        </div>
        <form action="pagina.php" method="post">
                <label for="nomeutente">Nome utente</label>
                <input type="text" name="nomeutente"
                id="nomeutente" value="inserire nome" />
                <br>
                <label for="cognomeutente">Cognome utente</label>
                <input type="text" name="cognomeutente"
                id="cognomeutente" value="inserire cognome" />
                <br>
                <label for="immagineprofilo">Immagine profilo</label>
                <input type="url" name="immagineprofilo"
                       id="immagineprofilo" value=""/>
                <br>
                <label for="presentazione">Frase di presentazione</label>
                <textarea rows="4" cols="22"
                         name="presentazione" id="presentazione" >
                         inserire frase di presentazione
                </textarea>
                <br>
                <label for="datanascita">Data di nascita</label>
                <input type="date" name="bday" max="2006-12-31"
                       id="datanascita" value="" />
                <br>
                <label for="pswd">Password</label>
                <input type="password" name="pswd"
                id="pswd" value="oscurato" />
                <br>
                <label for="confermapassword">Conferma password</label>
                <input type="password" name="pswd"
                id="confermapassword" value="oscurato" />
                <br>
                
                <input type="submit" value="Invio">
        </form>
        <br>
    </body>
</html>