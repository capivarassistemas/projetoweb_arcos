<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas.Master" AutoEventWireup="true" CodeBehind="Lacamentos.aspx.cs" Inherits="projetoweb_arcos.Lacamentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
         Bem vindo <asp:Label ID="lblUsuarioLogado" runat="server"></asp:Label> 
         <br /><br />
        <hr />
    </div>
    <div>

       <div>
           <asp:Label ID="lblCentroCusto" runat="server" Text="Centro de Custo: "></asp:Label>
           <asp:TextBox ID="txtCentroCusto" runat="server"></asp:TextBox>
       </div>

        <div>
          <asp:Label ID="lblCodBarras" runat="server" Text="Código de Barras: "></asp:Label>
          <asp:TextBox ID="txtCodBarras" runat="server"></asp:TextBox>
        </div>

      <div>
          <asp:Label ID="lblEmpresa" runat="server" Text="Empresa: "></asp:Label>
          <asp:TextBox ID="txtEmpresa" runat="server"></asp:TextBox>
      </div>
       
      <div>
          <asp:Label ID="lblFornecedor" runat="server" Text="Fornecedor: "></asp:Label>
          <asp:TextBox ID="txtFornecedor" runat="server"></asp:TextBox>
      </div>

     <div>
        <asp:Label ID="lblContabil" runat="server" Text="Contabil: "></asp:Label>
        <asp:CheckBox ID="chkContabil" runat="server" />
      </div>

     <div>
          <asp:Label ID="lblNumeroNotas" runat="server" Text="Documentos: "></asp:Label>
          <asp:TextBox ID="txtNumeroNotas" runat="server"></asp:TextBox>
      </div>

       <div>
          <asp:Label ID="lblEspecie" runat="server" Text="Especie: "></asp:Label>
          <asp:TextBox ID="txtEspecie" runat="server"></asp:TextBox>
      </div>

       <div>
          <asp:Label ID="lblData" runat="server" Text="Data: "></asp:Label>
          <asp:TextBox ID="txtData" runat="server" TextMode="Date"></asp:TextBox>
      </div>

      <div>
        <asp:Label ID="lblAPagar" runat="server" Text="A Pagar: "></asp:Label>
        <asp:CheckBox ID="chkAPagar" runat="server" />
      </div>

     <div>
          <asp:Label ID="lblCaixa" runat="server" Text="Caixa: "></asp:Label>
          <asp:TextBox ID="txtCaixa" runat="server"></asp:TextBox>
      </div>

     <div>
          <asp:Label ID="lblBaixa" runat="server" Text="Baixa: "></asp:Label>
          <asp:TextBox ID="txtBaixa" runat="server"></asp:TextBox>
      </div>

      <div>
          <asp:Label ID="lblObservacoes" runat="server" Text="Observacoes: "></asp:Label>
          <asp:TextBox ID="txtObservacoes" runat="server"></asp:TextBox>
      </div>

       <div>
          
          <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
      </div>

      <div>
          <asp:Button ID="btnGravar" runat="server" Text="Gravar" OnClick="btnGravar_Click" />
      </div>


    </div>

    <asp:Label ID="lblAviso" runat="server" ></asp:Label>

</asp:Content>
