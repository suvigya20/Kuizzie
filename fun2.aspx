<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fun2.aspx.cs" Inherits="Projectkz.fun2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FunFacts</title>
    <link href="fun2.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
	  <nav class="navbar">
       <ul>
	     <li><a href="Homeaft.aspx">Home</a></li>
		 <li><a href="quizhpg.aspx" >Quiz</a></li>
	     <li><a href="bookhpg.aspx">Books</a></li>
           <li><a href="Game.aspx">Game</a></li>
           <li><a href="Mindgames.aspx">Mind-games</a></li>
		 <li><a href="feedback.aspx">Feedback</a></li>

	   </ul>
     </nav>
            </div>
    <div class="container">
        <div class="card">
            <div class="icon">
                <ion-icon name="diamond-outline"></ion-icon>
            </div>
                <div class="content">
                    <p> "Dreamt" is the only English word that ends in the letters "mt".</br></br>
                        Almonds are a member of the peach family.</br></br>
                           Maine is the only state that has a one-syllable name.
                    </p>
                </div>
        </div>
        <div class="card">
            <div class="icon">
                <ion-icon name="alert-circle-outline"></ion-icon>
            </div>
                <div class="content">
                    <p>There are only four words in the English language which end in "dous":tremendous, horrendous, stupendous, and hazardous.</br></br>
                        Los Angeles' full name is "El Pueblo de Nuestra Senora la Reina de los Angeles de Porciuncula"</br></br>
                        A cat has 32 muscles in each ear.
                    </p>
                </div>
        </div>
        <div class="card">
            <div class="icon">
                <ion-icon name="alarm-outline"></ion-icon>
            </div>
                <div class="content">
                    <p>An ostrich's eye is bigger than its brain.</br></br>
                        Tigers have striped skin, not just striped fur.</br></br>
                        In many advertisements, the time displayed on a watch is 10:10.
                    </p></div>
        </div>
        <div class="card">
            <div class="icon">
                <ion-icon name="bulb-outline"></ion-icon>
            </div>
                <div class="content">
                    <p>
                        The characters Bert and Ernie on Sesame Street were named after Bert the cop and Ernie the taxi driver in Frank Capra's "It's a Wonderful Life."</br></br>
                        A dime has 118 ridges around the edge.</br></br>
                        The giant squid has the largest eyes in the world.

                    </p>
                </div>
        </div>
         <div class="card">
            <div class="icon">
                <ion-icon name="earth-outline"></ion-icon>
            </div>
                <div class="content">
                    <p>
                       Most people fall asleep in seven minutes.</br></br>
                        "Stewardesses" is the longest word that is typed with only the left hand.</br></br>
                        “Forty” is the only number that is spelt with letters arranged in alphabetical order.
 
                    </p>
                </div>
        </div>
        </div>
      <div>
                <asp:Button ID="Button1" runat="server" Height="24px" Text="1" Width="36px" Class="btn1"  PostBackUrl="~/Fun.aspx" />
                <asp:Button ID="Button2" runat="server" Height="24px" Text="2" Width="36px" Class="btn"  PostBackUrl="~/fun2.aspx"/>
        </div>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
        </form>
</body>
</html>


