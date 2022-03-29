<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="projetoweb_arcos.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
               <div>
                <asp:Label ID="lblLogin" runat="server" Text="Login: "></asp:Label>
                <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>              
               </div>

               <div>
                   <asp:Label ID="lblSenha" runat="server" Text="Senha: "></asp:Label>
                   <asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>               
               </div>

               <div>
                   <asp:Button ID="btnLogar" runat="server" Text="Logar" OnClick="btnLogar_Click" />
                </div>

        </div>
    </form>

    <asp:Label ID="lblAviso" runat="server" Text=""></asp:Label>

</body>
</html>
