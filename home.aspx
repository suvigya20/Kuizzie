<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Projectkz.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
    <link rel="stylesheet" href="home.css" />
    </head>
<body>
    <form id="form1" runat="server">
        <header>
        <div class="container">
          <div class="navbar">
            <img src="imgs/logo.jpg" class="logo">
              <nav>
                  <ul>
                      <li><a href="Registerkz.aspx">Register</a></li>
                       <li><a href="Login.aspx">Login</a></li>
                      <li><a href="aboutus.aspx">About us</a></li> 
                      <li><a href="services.aspx">Services</a></li>
                     
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
                <a href="Registerkz.aspx">  <button type="button">Explore</button></a>
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
                 <br /><br /><br /><br />
            <h1 class="a">Features provided</h1><br /><br>
            <div class="panel1">
              <div class="colx">
                    <div class="cardx card1x">
                    <h3 style="color:white;">Quiz</h3>
                     <p style="color:black;">Attempt quiz at your fingertips</p>
                </div>
              
                <div class="cardx card2x">
                    <h3 style="color:white;">Books</h3>
                    <p>Get Path to listed e-books</p>
                </div>
                  <div class="cardx card3x">
                    <h3 style="color:white;">Mind-Games</h3>
                    <p>Twist your brain in a diffrent way!!</p>
                </div>
                
                   </div>
                       </div><br />
                 <br /><br /><br /><br />
            <div class="panel2">
                    <div class="coly">
                    <div class="cardy card1y">
                    <h3 style="color:white;">Fun-Facts</h3>
                    <p>Facts that make you go OMG!!</p>
                </div>
                <div class="cardy card2y">
                    <h3 style="color:white;">Jump and Run</h3>
                    <p>A total mind refresher!!</p>
                </div>
                           </div>
            </div><br /><br /><br />
                 <br /><br /><br /><br /><br /><br />
       
        </main> 
        <footer>
          <div class="row2">
              <div class="col2">
                  <img src="imgs/logo.jpg" class="logo1">
                  <p>Kuizzie</p>
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
                      <a href="home.aspx"><button type="submit">Submit</button></a>
                  </form>
              </div>
          </div>
            <hr />
        </footer>  
    </form>
  </body>
</html>
