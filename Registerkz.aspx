<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registerkz.aspx.cs" Inherits="Projectkz.Registerkz" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register
        </title>
        <link href="reg.css" rel="stylesheet" />  
</head>
<body>
   <div class="Registerbox">
       
        <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/logo.jpg" alt="AlternateText" Class="user" />
      <h2 padding="0" margin="0" align="center" color="darksalmon"> REGISTER HERE </h2>
       <form runat="server">
           <asp:Label Text="Name" CssClass="lbName" runat="server" />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ForeColor="Red">Required</asp:RequiredFieldValidator>
           <asp:TextBox ID="TextBox1" runat="server" CssClass="txtName" placeholder="Enter Name"></asp:TextBox>
           

           <asp:Label Text="User Name" CssClass="lbUName" runat="server" />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="TextBox2" ForeColor="Red">Required</asp:RequiredFieldValidator>
           <asp:TextBox ID="TextBox2" runat="server" CssClass="txtUName" placeholder="Enter User Name"></asp:TextBox>
           

           <asp:Label Text="Email" CssClass="lbemail" runat="server" />
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid" ControlToValidate="TextBox3" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
           <asp:TextBox ID="TextBox3" runat="server" CssClass="txtemail" placeholder="Enter Email"></asp:TextBox>
           

           <asp:Label Text="Password" CssClass="lbpass" runat="server" />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="TextBox4" ForeColor="Red">Required</asp:RequiredFieldValidator>
           <asp:TextBox ID="TextBox4" runat="server" CssClass="txtpass" placeholder="Enter Password" TextMode="Password" ></asp:TextBox>
           

           <asp:Label Text="Confirm Password" CssClass="lbCpass" runat="server" />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Doesn't Match" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ForeColor="Red">Password doesn't match</asp:CompareValidator>
           <asp:TextBox ID="TextBox5" runat="server" CssClass="txtCpass" placeholder="Enter Password Again" TextMode="Password"></asp:TextBox>
          

           <asp:Label Text="Contact" CssClass="lbcont" runat="server" />
           <asp:TextBox ID="TextBox6" runat="server" CssClass="txtName" placeholder="+91-xxxxxxxxxx" MaxLength="10"></asp:TextBox>

           <asp:Label Text="Gender" CssClass="lbgen" runat="server" /></br></br>
           <asp:RadioButton GroupName="user" ID="RadioButton1" runat="server" Text="Male"  ForeColor="White" />&nbsp
           <asp:RadioButton GroupName="user" ID="RadioButton2" runat="server" Text="Female"  ForeColor="White"/>&nbsp
           <asp:RadioButton GroupName="user" ID="RadioButton3" runat="server" Text="Others" ForeColor="White"/></br></br>

           <asp:Label Text="DOB" CssClass="lbDob" runat="server" />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="TextBox7" ForeColor="Red">Required</asp:RequiredFieldValidator>
           <asp:TextBox ID="TextBox7" runat="server" CssClass="txtName" placeholder="Enter Your Date Of Birth"></asp:TextBox>
           


           <asp:Button Text="Register" CssClass="btnsubmit" runat="server" OnClick="Unnamed9_Click"/>

           <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

           
                      <a href="Login.aspx" style="color:#4af60d;">Already Registered?</a>
           
           </form>
    </div> 
</body>
</html>

