<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homeaft.aspx.cs" Inherits="Projectkz.Homeaft" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HomePage After Login</title>
    <link rel="stylesheet" href="x2.css" />
</head>
<body>
    <form id="form1" runat="server">
         <header>
        <div class="container">
          <div class="navbar">
            <img src="imgs/logo.jpg" class="logo">
              <nav>
                  <ul>
                      <li><a href="quizhpg.aspx">Quiz</a></li>
                      <li><a href="bookhpg.aspx">Books</a></li>
                      <li><a href="MindGames.aspx">Mind-games</a></li>
                       <li><a href="Fun.aspx">Fun-Facts</a></li>
                       <li><a href="Game.aspx">Game</a></li>
                      <li><a href="aboutus.aspx">About us</a></li>
                      <li><a href="Services.aspx">Services</a></li>                 
                      <li><a href="feedback.aspx">Feedback</a></li>
                     
                  </ul>
              </nav>
              <img src="imgs/me.jpg" class="menu">
        </div>
        <div class ="row">
            <div class="col">
                <h1>Kuizzie</h1>
                <p>Kuizzie comprises of quiz for each course to which the user can attend to it.<br /><br />
                     within the given time limit and reports are generated.<br /><br />
                    User can also explore among various functions provided.</p>
               <a href="Homeaft.aspx"><button type="button">Explore</button><br /><br /></a> 
                <asp:Button ID="Button1" runat="server" Text="Logout" CssClass="lg" OnClick="Button1_Click" />
                
            </div>
            <div class="col">
                <div class="card card1"> </div>
                <div class="card card2"> </div>
                <div class="card card3"> </div>
                <div class="card card4"> </div>
            </div>
        </div>
         </div>
        </header>
        <main>
             <div class="mid">
                 <br /><br /><br />
                 <asp:Label ID="Label1" runat="server" Text="Label" CssClass="h"></asp:Label>    
            <div class="panel1">
            <div class="colx">
                <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
        <img src="imgs/f6.jpg" style="width:100%;height:100%;border-radius:30px;">
    </div>
    <div class="flip-card-back">
      <p class="z"><br /><u>Quiz Attempt</u></p><br /><br />
      <p class="z1">Attempt quiz at your <br /><br />fingertips.</p><br />
      <p class="z1">Wherever you want.</p><br />
         <a href="quizhpg.aspx"><button class="l" type="button">Explore</button</a>

    </div>
  </div>
</div>
<div class="flip-card3">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="imgs/f8.jpg" alt="" style="width:100%;height:100%;border-radius:30px;">
    </div>
    <div class="flip-card-back">
      <p class="z"><br /><u>Books</u></p><br /><br />
      <p class="z1">Get a path towards your<br /><br /> book.<br /></p><br /> 
      <p class="z1">Whenver you want. </p><br />
        <a href="bookhpg.aspx"><button class="l" type="button">Explore</button></a>
    </div>
  </div>
</div>

<div class="flip-card2">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="imgs/f5.jpg" alt="" style="width:100%;height:100%;border-radius:30px;">
    </div>
    <div class="flip-card-back">
      <p class="z"><br />Mind-Games</u></p><br /><br />
      <p class="z1">Wanna twist your mind?</p><br /> 
      <p class="z1">Try it in a funny way. </p><br />
       <a href="MindGames.aspx"> <button class="l" type="button">Explore</button></a>

    </div>
  </div>
</div>
		</div>
                </div> 
            <div class="panel2">
                <div class="coly">
  <div class="flip-card4">
  <div class="flip-card-inner">
    <div class="flip-card-front">
        <img src="imgs/f1.jpg" style="width:100%;height:100%;border-radius:30px;">
    </div>
    <div class="flip-card-back">
      <p class="z"><br /><u>Facts</u></p><br /><br />
      <p class="z1">Wanna hear facts over<br /><br /> Myths?</p><br />
      <p class="z1">Try it in a funny way</p><br />
        <a href="Fun.aspx"> <button class="l" type="button">Explore</button></a>

    </div>
  </div>
</div>
<div class="flip-card5">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="imgs/g.jpg" alt="" style="width:100%;height:100%;border-radius:30px;">
    </div>
    <div class="flip-card-back">
      <p class="z"><br /><u>Jump and Run</u></p><br /><br />
      <p class="z1">Wanna refresh<br /><br />Your mind?<br /></p><br /> 
      <p class="z1">Play and try.</p><br />
       <a href="Game.aspx"> <button class="l" type="button">Explore</button></a>
    </div>
  </div>
</div>
                </div>
            </div>
            <br /><br /><br /><br />
                 <br /><br />
        </main>
       <footer>
          <div class="row2">
              <div class="col2">
                  <img src="imgs/logo.jpg" class="logo1">
                  <p>
                      Kuizzie   
                  </p>
              </div>
              <div class="col2">
                  <h2>OFFICE</h2>
                  <p>GT Road</p>
                  <p>Gomti Nagar, Lucknow</p><br />
                  <p>Uttar Pradesh, PIN 226017, INDIA</p><br />
                  <p class="email">info@kuizzie.ac.in</p><br />
                  <h4>+91 - 0000 0000 00</h4>
              </div>
              <div class="col2">
                  <h2>LINKS</h2>
                  <ul>
                      <li><a href="#">HOME</a></li>
                      <li><a href="#">SERVICES</a></li>
                      <li><a href="#">ABOUT US</a></li>
                      <li><a href="#">CONTACT</a></li>
                      <li><a href="#">FEEDBACK</a></li>
                  </ul>
              </div>
              <div class="col2">
                  <h2>NEWSLETTER</h2>
                  <form>
                      <input type="email" placeholder="Enter your email id">
                      <a href="Homeaft.aspx"><button type="submit">Submit</button></a>
                  </form>
              </div>
          </div>
            <hr />
        </footer>  
    </form>
</body>
</html>
