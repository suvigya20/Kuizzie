<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MindGames.aspx.cs" Inherits="Projectkz.MindGames" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mind Game</title>
    <link href="Mind.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 21%;
            height: 156px;
            border-radius:50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="maindiv">
	  <nav class="navbar">
       <ul>
	     <li><a href="homeaft.aspx">Home</a></li>
		 <li><a href="quizhpg.aspx" >Quiz</a></li>
           <li><a href="fun.aspx" >Fun-facts</a></li>
            <li><a href="Game.aspx">Games</a></li>
	     <li><a href="bookhpg.aspx">Books</a></li>
		 <li><a href="feedback.aspx">Feedback</a></li>
		 

	   </ul>
     </nav>
		<div class="img2">
            <img src="imgs/logo.jpg" class="auto-style1"/>
<div class="card">
    <img src="imgs/q3.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>What is the one thing that all wise men,regardless of their religion or politics, agree is between heaven and earth? What is it?</p>
  <p><button class="b">The Word "And"</button></p>
</div>
<div class="card2">
    <img src="imgs/q3.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>What common English verb becomes</br> its own past tence by rearranging its letters?</p>
  <p><button class="b"></br>Eat</br></button></p>
</div>
<div class="card3">
    <img src="imgs/q3.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>If you have a cube, each edge two inches long,how many total square inches are there among all eight sides?</p>
  <p><button class="b" >Hard to say,since cubes have six sides</button></p>
</div>
<div class="card4">
    <img src="imgs/q3.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>It occurs once in a minute, <br>twice in a moment, but never in an hour.</p>
  <p><button class="b">The letter M</button></p>
</div>
<div class="card5">
    <img src="imgs/q3.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>Is it legal for a man </br>to marry his widow's sister?</p>
  <p><button class="b">No, because he's dead</button></p>
</div>
<div class="card6">
    <img src="imgs/q3.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>Is it correct to say "the yolk of eggs is white"or "the yolk of eggs are white"?</p>
  <p><button class="b">Neither, </br>the yolk of eggs are yellow.</button></p>
</div>
  <div class="card7">
      <img src="imgs/q3.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>If a rooster lays an egg on the </br>exact peak of a barn,</br> which side does it fall?</p>
  <p><button class="b">Roosters don't lay eggs</button></p>
</div>
<div class="card8">
    <img src="imgs/q3.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p> What can you hold in your left </br>hand but not in your </br>right hand?</p>
  <p><button class="b">Your Right Elbow</button></p>
</div>
<div class="card9">
  <img src="imgs/q3.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>A cowboy rides into town on Friday. </br>He stays three days, then rides out of town on Friday.How?</p>
  <p><button class="b">The horse's name was Friday</button></p>
</div>
<div class="card10">
   <img src="imgs/q3.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>Brothers and sisters I have none</br> but this man's father is my </br>father's son.Who is the man?</p>
  <p><button class="b">The man is my son.</button></p>
</div> 
            <div>
                <asp:Button ID="Button1" runat="server" Height="24px" Text="1" Width="36px" Class="btn" PostBackUrl="~/MindGames.aspx" />&nbsp &nbsp &nbsp
                <asp:Button ID="Button2" runat="server" Height="24px" Text="2" Width="36px" Class="btn" PostBackUrl="~/MG2.aspx"/>&nbsp &nbsp &nbsp
                <asp:Button ID="Button3" runat="server" Height="24px" Text="3" Width="36px" Class="btn" PostBackUrl="~/MG3.aspx" />
                </div>
</header>
    </form>
</body>
</html>