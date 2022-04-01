<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="projetoweb_arcos.Cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        Bem vindo <asp:Label ID="lblUsuarioLogado" runat="server"></asp:Label> 
        <asp:LinkButton ID="btnLogout" Text="Sair" runat="server" OnClick="btnLogout_Click"></asp:LinkButton>
        <br /><br />
        <hr />
    </div>
    <div>
       
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
       

         <asp:Label ID="lblAviso" runat="server" ></asp:Label>

    </div>
</asp:Content>
