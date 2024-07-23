<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="Projectkz.feedback" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact us</title>
	<link rel="stylesheet" href="m1.css" />
</head>
<body>
    <form id="form1" runat="server"> 
<div class="img2">
    <img src="imgs/logo.jpg" alt="">
		<br><br><br>
</div>
	<div class="contact_sec">
     <div class="contact_info">
	 <h3>Bansthali Vidyapith , Rajasthan , India</h3>
	 <h3>Phone: +91 0000 0000 00</h3>
	 <h3>Contact : example@gmail.com</h3>
	 <h3>Mon -  Fri 8:00 AM to 5:00 PM</h3>
     </div>
	 <div class="contact_form">
	 <h2 class="j">Feedback</h2>
	  <form class ="contact">
	 <asp:TextBox ID="TextBox2" runat="server" CssClass="box" placeholder="your name"></asp:TextBox>
		  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>

	<asp:TextBox ID="TextBox1" runat="server" CssClass="box" placeholder="E-mail"></asp:TextBox>
		  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
		  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Format" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

		  <asp:TextBox ID="TextBox3" runat="server" CssClass="box" placeholder="Feedback" MaxLength="1000" Height="188px" Width="421px"></asp:TextBox>
		  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>

		  <asp:Button ID="Button1" runat="server" Text="SUBMIT" CssClass="send" OnClick="Button1_Click" />
		  
	  </form>
	  </div>
	  </div>
	  
    </form>
</body>
</html>

