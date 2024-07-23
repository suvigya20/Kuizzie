<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MG2.aspx.cs" Inherits="Projectkz.MG2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MG2</title>
    <link href="MG2.css" rel="stylesheet" />
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
           <li><a href="fun.aspx">Fun-facts</a></li>
		 <li><a href="feedback.aspx">Feedback</a></li>
		

	   </ul>
     </nav>
		<div class="img2">
            <img src="imgs/logo.jpg" class="auto-style1"/>
<div class="card">
    <img src="imgs/MG2.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>What is greater than God,more evil than the devil,the poor have it,the rich need it,and if you eat it, you'll die?</p>
  <p><button class="b">Nothing</button></p>
</div>
<div class="card2">
     <img src="imgs/MG2.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>Who makes it, has no need of it.Who buys it, has no use for it.Who uses it can neither see nor feel it.What is it?</p>
  <p><button class="b">A Coffin</button></p>
</div>
<div class="card3">
     <img src="imgs/MG2.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>What can travel around the world while staying in a corner?</p>
  <p><button class="b" >A Stamp</button></p>
</div>
<div class="card4">
     <img src="imgs/MG2.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>What has to be broken </br>before you use it?</p>
  <p><button class="b">An Egg</button></p>
</div>
<div class="card5">
     <img src="imgs/MG2.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>What has many keys but can't open a single lock?</p>
  <p><button class="b">A Piano</button></p>
</div>
<div class="card6">
     <img src="imgs/MG2.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>What tastes better</br> than it smells?</p>
  <p><button class="b">Tongue</button></p>
</div>
  <div class="card7">
       <img src="imgs/MG2.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>I am an odd number.Take away a letter and become even.What number am I?</p>
  <p><button class="b">Seven</button></p>
</div>
<div class="card8">
     <img src="imgs/MG2.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p> If two's company,and three's a crowd,what are four and five?</p>
  <p><button class="b">Nine</button></p>
</div>
<div class="card9">
   <img src="imgs/MG2.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>What goes through cities and fields,but never moves?</p>
  <p><button class="b">Road</button></p>
</div>
<div class="card10">
    <img src="imgs/MG2.jpg" width="100%"/>
  <p class="price"><b>Try Me Out</b></p>
  <p>During which month do people sleep the least?</p>
  <p><button class="b">February (there are fewer nights)</button></p>
</div> 
            <div>
                <asp:Button ID="Button1" runat="server" Height="24px" Text="1" Width="36px" Class="btn"  PostBackUrl="~/MindGames.aspx"/>&nbsp &nbsp &nbsp
                <asp:Button ID="Button2" runat="server" Height="24px" Text="2" Width="36px" Class="btn"  PostBackUrl="~/MG2.aspx"/>&nbsp &nbsp &nbsp
                <asp:Button ID="Button3" runat="server" Height="24px" Text="3" Width="36px" Class="btn"  PostBackUrl="~/MG3.aspx"/>
                </div>
</header>
    </form>
</body>
</html>

