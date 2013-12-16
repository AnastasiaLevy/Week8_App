﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ASPlogin.aspx.cs" Inherits="ASPlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        form {
            background-image: url('Images/psychology-pic.jpg');
            width: 924px;
            height: 300px;
            
        }
        .formStyle {
            border: double blue;
            outline-color:blue;
            margin-top:0;
            margin-left:507px;
            background-color:azure;
            opacity:0.9;
            height:300px;
            position:relative;
           
        }
        div {
            margin-top: 0px;
           
        }
         h2 {
        font-family: 'Browallia New';
        color: blue;
        text-align:center;
    }
        .text {
            
            border: double blue;
            color:black;
        }
        text.hover {
                    transform: scale(1.2, 1.2);
        -moz-transform: scale(1.2, 1.2);
        -ms-transform: scale(1.2, 1.2);
        -webkit-transform: scale(1.2, 1.2);
        -o-transform: scale(1.2, 1.2);
        background-color: azure;
        opacity: 0.5;
        
    }

    </style>
</head>
 <body>  
   <h2>
Welcome to Psychology Research Methods
   </h2>

     <asp:HyperLink ID="HyperLink1" CssClass="text" runat="server" NavigateUrl="~/Register.aspx" ToolTip="Click this button if you would like to create an account">Register</asp:HyperLink>
    <form id="form1" runat="server">
       
    <div>
        <asp:Login ID="Login1" CssClass ="formStyle" runat="server" OnAuthenticate="Login1_Authenticate1" Height="221px" Width="300px">
        </asp:Login>
    </div>
    </form>
</body>
</html>
