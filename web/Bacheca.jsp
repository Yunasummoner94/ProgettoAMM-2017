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
            <div class="post">
                <h2 class="nomeutente">Polly Nomio</h2>
                <img title="profilo" alt="Polly Nomio"
                        src="Immagini/pollynomio.jpg" width="50" height="50">
                <p>
                    Anche oggi ho preso un 30, il venticinquesimo della mia carriera!
                </p>
            </div>
            <div class="post">
                <h2 class="nomeutente">Jon Snow</h2>
                <img title="profilo2" alt="Jon Snow"
                        src="Immagini/jonsnow.png" width="50" height="50">
                <br>
                 <img title="allegato" alt="Jon Snow Baba"
                        src="Immagini/jonsnowbaba.jpg" width="150" height="150">

            </div>
            <div class="post">
                <h2 class="nomeutente">Polemista Misterioso</h2>
                <img title="profilo3" alt="Polemista misterioso"
                        src="Immagini/illuminati.jpg" width="50" height="50">
                <br>
                <a href="http://ilfalzoquotidiano.com/matteo-renzi-ritratta-non-conoscevo-mio-padre/"> 
                          A A A - Matteo Renzi ritratta: non conoscevo mio padre - CLIKKA QUI
                      </a>
            </div>
            <br><br><br>
        </div>
        
    </body>
</html>