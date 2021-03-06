<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="MacRoman"%>
<jsp:useBean id="game" scope="session"  class="at.ac.tuwien.big.we14.lab2.api.impl.Game" />

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="de" lang="de">
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Business Informatics Group Quiz - Zwischenstand</title>
        <link rel="stylesheet" type="text/css" href="style/screen.css" />
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/framework.js" type="text/javascript"></script>
    </head>
    <body id="winnerpage">
        <a class="accessibility" href="#roundwinner">Zur Rundenwertung springen</a>
        <header role="banner" aria-labelledby="mainheading"><h1 id="mainheading"><span class="accessibility">Business Informatics Group</span> Quiz</h1></header>
        <nav role="navigation" aria-labelledby="navheading">
            <h2 id="navheading" class="accessibility">Navigation</h2>
            <ul>
                <li><a id="logoutlink" title="Klicke hier um dich abzumelden" href="#" accesskey="l">Abmelden</a></li>
            </ul>
        </nav>
        
        <section role="main">
            <!-- winner message -->
            <section id="roundwinner" aria-labelledby="roundwinnerheading">
                <h2 id="roundwinnerheading" class="accessibility">Rundenzwischenstand</h2>
                <p class="roundwinnermessage"><%=game.getOneRound().getWinner()%> gewinnt Runde <%= game.getPlayedCategories()%>!</p>
            </section>
        
            <!-- round info -->    
            <section id="roundinfo" aria-labelledby="roundinfoheading">
                <h2 id="roundinfoheading" class="accessibility">Spielerinformationen</h2>
                <div id="player1info" class="playerinfo">
                    <span id="player1name" class="playername">Spieler 1</span>
                    <ul class="playerroundsummary">
                        <li><span class="accessibility">Frage 1:</span><span id="player1answer1" class='${game.getOneRound().getPlayer_question1()}'>Richtig</span></li>
                        <li><span class="accessibility">Frage 2:</span><span id="player1answer2" class='${game.getOneRound().getPlayer_question2()}'>Falsch</span></li>
                        <li><span class="accessibility">Frage 3:</span><span id="player1answer3" class='${game.getOneRound().getPlayer_question3()}'>Richtig</span></li>
                    </ul>
                    <p id="player1roundcounter" class="playerroundcounter">Gewonnene Runden: <span id="player1wonrounds" class="playerwonrounds"><%= game.getPlayer_points()%></span></p>
                </div>
                <div id="player2info" class="playerinfo">
                    <span id="player2name" class="playername">Spieler 2</span>
                    <ul class="playerroundsummary">
                        <li><span class="accessibility">Frage 1:</span><span id="player2answer1" class='${game.getOneRound().getPlayer2_question1()}'>Richtig</span></li>
                        <li><span class="accessibility">Frage 2:</span><span id="player2answer2" class='${game.getOneRound().getPlayer2_question2()}'>Richtig</span></li>
                        <li><span class="accessibility">Frage 3:</span><span id="player2answer3" class='${game.getOneRound().getPlayer2_question3()}'>Richtig</span></li>
                    </ul>
                    <p id="player2roundcounter" class="playerroundcounter">Gewonnene Runden: <span id="player2wonrounds" class="playerwonrounds"><%= game.getPlayer2_points()%></span></p>
                </div>
                <a id="next" href="BigQuizServlet?action=weiter">Weiter</a>
            </section>
        </section>

        <!-- footer -->
        <footer role="contentinfo">&copy 2014 BIG Quiz</footer>
    </body>
</html>
