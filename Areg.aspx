<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Areg.aspx.cs" Inherits="Projectkz.Areg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Aregister</title>
     <link href="areg.css" rel="stylesheet" />  
</head>
<body>
   
        <div class="Registerbox">

              <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/logo.jpg" alt="AlternateText" Class="user" />
      <h2 padding="0" margin="0" align="center" color="darksalmon"> REGISTER HERE </h2>
       <form runat="server">
           <asp:Label Text="Name" CssClass="lbName" runat="server" />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
           <asp:TextBox ID="TextBox1" runat="server" CssClass="txtName" placeholder="Enter Name"></asp:TextBox>
           

           <asp:Label Text="Admin Name" CssClass="lbUName" runat="server" />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="TextBox2" ForeColor="Red">*</asp:RequiredFieldValidator>
           <asp:TextBox ID="TextBox2" runat="server" CssClass="txtUName" placeholder="Enter Admin Name"></asp:TextBox>
           

           <asp:Label Text="Email" CssClass="lbemail" runat="server" />
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid" ControlToValidate="TextBox3" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
           <asp:TextBox ID="TextBox3" runat="server" CssClass="txtemail" placeholder="Enter Email"></asp:TextBox>
           

           <asp:Label Text="Password" CssClass="lbpass" runat="server" />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="TextBox4" ForeColor="Red">*</asp:RequiredFieldValidator>
           <asp:TextBox ID="TextBox4" runat="server" CssClass="txtpass" placeholder="Enter Password" TextMode="Password" ></asp:TextBox>
           

           <asp:Label Text="Confirm Password" CssClass="lbCpass" runat="server" />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Doesn't Match" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ForeColor="Red">*</asp:CompareValidator>
           <asp:TextBox ID="TextBox5" runat="server" CssClass="txtCpass" placeholder="Enter Password Again" TextMode="Password"></asp:TextBox>
          

           <asp:Label Text="Contact" CssClass="lbcont" runat="server" />
           <asp:TextBox ID="TextBox6" runat="server" CssClass="txtName" placeholder="+91-xxxxxxxxxx" MaxLength="10"></asp:TextBox>

           


           <asp:Button Text="Register" CssClass="btnsubmit" runat="server" OnClick="Unnamed8_Click" />

           <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                      <a href="Login.aspx" style="color:#fffb39;">Already Registered?</a>
           
         
           

        </form>
    </div>
</body>
</html>
