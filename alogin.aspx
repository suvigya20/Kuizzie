<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alogin.aspx.cs" Inherits="Projectkz.alogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="Login.css" rel="stylesheet"/>
</head>
<body>
   <div class="loginbox" >
       <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/logo.jpg"  border-radius="50%" alt="AlternateText" Class="user" />
       <h2>Log in here</h2>
       <form runat="server">
         <asp:Label Text="Admin Name" CssClass="lb1email" runat="server" />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
           <asp:TextBox ID="TextBox1" runat="server" CssClass="txtemail" placeholder="Enter Admin Name"></asp:TextBox>

        <asp:Label Text="Password" CssClass="lb1pass" runat="server" />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
           <asp:TextBox ID="TextBox2" runat="server" CssClass="txtpass" placeholder="***********" TextMode="Password"></asp:TextBox><br /><br /><br />

        <asp:Button Text="Sign In" CssClass="btnsubmit" runat="server" OnClick="Unnamed3_Click"  />
           
           <center><asp:Label ID="Label1" runat="server" Text="" ForeColor="Yellow"></asp:Label></center>
           <br /><br />
        <a href="fp.aspx" style="color:#fbe302;">Forgot Password?</a><br />
          <a href="Registerkz.aspx" style="color:#4af60d;">Not Registered?</a>
       </form>

   </div>
       
</body>
</html>

