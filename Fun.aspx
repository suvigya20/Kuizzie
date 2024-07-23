<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fun.aspx.cs" Inherits="Projectkz.Fun" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FunFacts</title>
    <link href="fun.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
	  <nav class="navbar">
       <ul>
	     <li><a href="Homeaft.aspx">Home</a></li>
		<li><a href="quizhpg.aspx">Quiz</a></li>
	     <li><a href="bookhpg.aspx">Books</a></li>
            <li><a href="Game.aspx">Games</a></li>
           <li><a href="MindGames.aspx">Mind-games</a></li>
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
                    <p> It is impossible for most people to lick their own elbow.</br></br>
                          A crocodile cannot stick its tongue out.</br></br>
                        A shrimp's heart is in its head.
                    </p>
                </div>
        </div>
        <div class="card">
            <div class="icon">
                <ion-icon name="alert-circle-outline"></ion-icon>
            </div>
                <div class="content">
                    <p>It is physically impossible for pigs to look up into the sky.</br></br>
                        If you sneeze too hard, you could fracture a rib.</br></br>
                        The "sixth sick sheik's sixth sheep's sick" is believed </br>to be the toughest tongue twister in the English language.
                    </p>
                </div>
        </div>
        <div class="card">
            <div class="icon">
                <ion-icon name="alarm-outline"></ion-icon>
            </div>
                <div class="content"><p>
                    Wearing headphones for just an hour could increase the bacteria in your ear by 700 times.</br></br>
                    Like fingerprints, everyone's tongue print is different.</br></br>
                    Some lipsticks contain fish scales.
                 </p></div>
        </div>
        <div class="card">
            <div class="icon">
                <ion-icon name="bulb-outline"></ion-icon>
            </div>
                <div class="content">
                    <p>
                        In the course of an average lifetime, while sleeping you might eat around 70 assorted insects and 10 spiders.</br></br>
                        Rubber bands last longer when refrigerated.</br></br>
                        There are 293 ways to make change for a dollar.
                    </p>
                </div>
        </div>
         <div class="card">
            <div class="icon">
                <ion-icon name="earth-outline"></ion-icon>
            </div>
                <div class="content">
                    <p>
                        The average person's left hand does 56% of the typing (when using the proper position of the hands on the keyboard; Hunting and pecking doesn't count!).</br></br>
                        A shark is the only known fish that can blink with both eyes.
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