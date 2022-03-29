<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="projetoweb_arcos.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="formCadastro" runat="server">
        <div>

            <div>
                <asp:Label ID="lblCpf" runat="server" Text="C.N.P.J/C.P.F: "></asp:Label>
                <asp:TextBox ID="txtCpf" runat="server" ></asp:TextBox>
             </div>

            <div>
                <asp:Label ID="lblNome" runat="server" Text="Nome: "></asp:Label>
                <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
             </div>

            <div>
                <asp:Label ID="lblRg" runat="server" Text="I.R/R.G: "></asp:Label>
                <asp:TextBox ID="txtRg" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="lblCep" runat="server" Text="C.E.P: "></asp:Label>
                <asp:TextBox ID="txtCep" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Button ID="btnConsultar" runat="server" Text="Consultar" OnClick="btnConsultar_Click" />
            </div>

            <div>
                <asp:Label ID="lblLogradouro" runat="server" Text="Logradouro: "></asp:Label>
                <asp:TextBox ID="txtLogradouro" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="lblNumero" runat="server" Text="Número: "></asp:Label>
                <asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="lblComplemento" runat="server" Text="Complemento: "></asp:Label>
                <asp:TextBox ID="txtComplemento" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="lblBairro" runat="server" Text="Bairro: "></asp:Label>
                <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="lblCidade" runat="server" Text="Cidade: "></asp:Label>
                <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="lblTelefone" runat="server" Text="Telefone Principal: "></asp:Label>
                <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="lblEmail" runat="server" Text="E-mail Principal: "></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="lblFornecedor" runat="server" Text="Fornecedor: "></asp:Label>
                <asp:CheckBox ID="chkFornecedor" runat="server" />
            </div>

            <div>
                <asp:Button ID="btnGravar" runat="server" Text="Gravar" OnClick="btnGravar_Click" />
            </div>

        </div>
    </form>

    <asp:Label ID="lblAviso" runat="server" ></asp:Label>

</body>
</html>
