<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="it">
    <head> 
        <title>NerdBook</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Sara Valeria Scardigli">
        <meta name="keywords" content="descrizione social network">
        
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
            <!--header contenente il titolo della pagina-->
            <c:set var="tile" value="Descrizione" scope="request"/>
            <jsp:include page="header.jsp"/>
        <nav>
            <ul>
                <li><a href="#titolo">Cos'è NerdBook?</a>
                        <li><a href="#presentazione">Presentazione</a></li>
                        <li><a href="#pubblico">A chi è rivolto</a></li>
                        <li><a href="#registrazione">Come registrarsi</a>
                        <li><a href="#info">Informazioni di servizio</a></li>
                        <li><a href="Login.html">Vai al login</a></li> 
 
            </ul>
        </nav>
        
        <h1 id="titolo">Cos'è NerdBook?</h1>
        <article id="article1">
            <h2 id="presentazione">Presentescion</h2>
            <p>
                NerdBook è un social Nerdwork (ehm, network) per nerd. Cosa vorrà dire? 
                Mah, semplicemente che tutte le persone che troverete in questo social network
                avranno in comune con voi un sacco di passioni... Ecco, più o meno tutti le stesse...
                Insomma, passioni da NERD!
            </p>
            <h2 id="pubblico">A chi è rivolto</h2>
            <p>
                Ve lo dobbiamo anche spiegare? Il titolo parla da sé! Questo social network è rivolto a 
                tutti i nerd del mondo, o per lo meno sicuramente a tutti quelli iscritti in informatica.
                Poi, invitate un po' chi volete, basta che vi registriate. 
            </p>
            <h2 id="registrazione">Come registrarsi</h2>
            <p>
                Supponiamo che questo non sia il primo social network a cui vi affacciate. Come tutti gli altri,
                ci sarà un form per effettuare il login o la registrazione, se ancora non avete un account. Il 
                link è da qualche parte in questa pagina, così a occhio e croce si trova nella barra di navigazione
                che ancora non ho messo, perché sono solo al task 3.
                P.s, è in fondo alla pagina.
            </p>
            <h3 id="info">Qualche info utile</h3>
            <p>
                NedrBook è totalmente gratuito. Non credete ai post farlocchi che girano, come quelli di Facebook e
                Whatsapp, in cui ti dicono che se non condividi una catena ad almeno dieci contatti il bollino non ti diventa
                verde e il sistema diventa a pagamento. Qui lo diciamo e qui lo neghiamo: sarà sempre gratutio.
            </p>
        </article>
    </body>
</html>