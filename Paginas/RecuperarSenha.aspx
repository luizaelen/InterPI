<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageInicial.master" AutoEventWireup="true" CodeFile="RecuperarSenha.aspx.cs" Inherits="Paginas_recovery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 240px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="text-center">
            <link href="../css/StyleTabela.css" rel="stylesheet" />
            <center>
                <h3> Recuperar Senha</h3>
                <br />
                <br />

            <table>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label></td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtCodigo" runat="server" Width="220px" CssClass="form-control" required title=""> </asp:TextBox>
                    </td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-default btn-primary" Text="Enviar Codigo"></asp:Button>
                </td>
                
            </tr>
           <tr><td><br /></td></tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label1" runat="server" Text="Codigo"></asp:Label><asp:Label ID="Label19" runat="server" Text="*" ForeColor="Red"></asp:Label></td>
                <td >
                    <asp:TextBox ID="txtNome" runat="server" Width="220px" CssClass="form-control" required title=""></asp:TextBox>
                    </td>
                <td>
                   <asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Font-Size="Small" Text="Insira o código enviado por E-mail."></asp:Label>
                </td>

                    
             
               
            </tr>

             <tr><td><br /></td></tr>
                <tr>
                <td class="alinhar">
                    <asp:Label ID="Label3" runat="server" Text="Senha"></asp:Label><asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red"></asp:Label></td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server" Width="220px" CssClass="form-control" required title="" TextMode="Password"></asp:TextBox></td>
            </tr>
                <tr><td><br /></td></tr>
                <tr>
                <td class="alinhar">
                    <asp:Label ID="Label6" runat="server" Text="Confirmar Senha"></asp:Label><asp:Label ID="Label7" runat="server" Text="*" ForeColor="Red"></asp:Label></td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox2" runat="server" Width="220px" CssClass="form-control" required title="" TextMode="Password"></asp:TextBox></td>
            </tr>
           
                 </table>
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-default btn-primary" Text="Alterar Senha"></asp:Button>
        </div>
    </div>



    </center>
</asp:Content>

