<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="projetoweb_arcos.Defautl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">   
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />   
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Login.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div id="login">
                 <div class="login">

                       <asp:Image ID="LoginImagem" src="img/Personal_user_6031.png" runat="server" class="loginImagem" />

                       <asp:Label ID="lblLogin" runat="server" Text="Login: " ></asp:Label>
                       <asp:TextBox ID="txtLogin" runat="server" class="corInput" ></asp:TextBox>              
               

             
                       <asp:Label ID="lblSenha" runat="server" Text="Senha: "></asp:Label>
                       <asp:TextBox ID="txtSenha" runat="server" class ="corInput"></asp:TextBox>               
               

              
                       <asp:Button ID="btnLogar" runat="server" Text="Logar" class="botao" OnClick="btnLogar_Click" />
                      
                         <asp:Label ID="lblAviso" runat="server" ForeColor="#CC0000"></asp:Label>
                        
                       
                   </div>
                 
            </div>
            
        </div>
    </form>
</body>
</html>
