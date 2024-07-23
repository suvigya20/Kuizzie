<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MG3.aspx.cs" Inherits="Projectkz.MG3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MG3</title>
    <link href="MG3.css" rel="stylesheet" />
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
	     <li><a href="bookhpg.aspx">Books</a></li>
            <li><a href="Game.aspx">Games</a></li>
           <li><a href="fun.aspx" >Fun-facts</a></li>
		 <li><a href="feedback.aspx">Feedback</a></li>
		 

	   </ul>
     </nav>
		<div class="img2">
            <img src="imgs/logo.jpg" class="auto-style1" />
<div class="card">
    <img src="imgs/MG3.jpg" width="100%" />
  <p class="price"><b>Try Me Out</b></p>
  <p>What is made of water  if you put it into water it will die?</p>
  <p><button class="b">An Ice</button></p>
</div>
<div class="card2">
     <img src="imgs/MG3.jpg" width="100%" />
  <p class="price"><b>Try Me Out</b></p>
  <p>I'm tall when I'm young and I'm short when I'm old. What am I?</p>
  <p><button class="b">Candle</button></p>
</div>
<div class="card3">
    <img src="imgs/MG3.jpg" width="100%" />
  <p class="price"><b>Try Me Out</b></p>
  <p>What has hands </br>can not clap?</p>
  <p><button class="b" > Clock</button></p>
</div>
<div class="card4">
    <img src="imgs/MG3.jpg" width="100%" />
  <p class="price"><b>Try Me Out</b></p>
  <p>You can drop me from the tallest building and I'll be fine, if you drop me in water I die.What am I?</p>
  <p><button class="b">Paper</button></p>
</div>
<div class="card5">
    <img src="imgs/MG3.jpg" width="100%" />
  <p class="price"><b>Try Me Out</b></p>
  <p>A man who was outside the rain without an umbrella or a hat didn't get a single hair on his head wet.Why ?</p>
  <p><button class="b">He was Bald</button></p>
</div>
<div class="card6">
    <img src="imgs/MG3.jpg" width="100%" />
  <p class="price"><b>Try Me Out</b></p>
  <p>What has an eye but can not see?</p>
  <p><button class="b">A needle</button></p>
</div>
  <div class="card7">
      <img src="imgs/MG3.jpg" width="100%" />
  <p class="price"><b>Try Me Out</b></p>
  <p>When is a door not a door?</p>
  <p><button class="b">When its ajar</button></p>
</div>
<div class="card8">
    <img src="imgs/MG3.jpg" width="100%" />
  <p class="price"><b>Try Me Out</b></p>
  <p> What has a head and a tail,no body?</p>
  <p><button class="b">A coin</button></p>
</div>
<div class="card9">
  <img src="imgs/MG3.jpg" width="100%" />
  <p class="price"><b>Try Me Out</b></p>
  <p>What goes up and down but doesnt move?</p>
  <p><button class="b">Staircase</button></p>
</div>
<div class="card10">
   <img src="imgs/MG3.jpg" width="100%" />
  <p class="price"><b>Try Me Out</b></p>
  <p>I have branches,but no fruits ,trunk or leaves.who am I?</p>
  <p><button class="b">A bank</button></p>
</div> 
            <div>
                <asp:Button ID="Button1" runat="server" Height="24px" Text="1" Width="36px" Class="btn"  PostBackUrl="~/MindGames.aspx"/>&nbsp &nbsp &nbsp
                <asp:Button ID="Button2" runat="server" Height="24px" Text="2" Width="36px" Class="btn" PostBackUrl="~/MG2.aspx"/>&nbsp &nbsp &nbsp
                <asp:Button ID="Button3" runat="server" Height="24px" Text="3" Width="36px" Class="btn" PostBackUrl="~/MG3.aspx"/>
                </div>
</header>
    </form>
</body>
</html>