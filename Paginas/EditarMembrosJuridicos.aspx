<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="EditarMembrosJuridicos.aspx.cs" Inherits="Paginas_EditarMembrosJuridicos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ConteudoAdmin">
        <div>
            <div class="text-center">
                <h3>Editar</h3>
            </div>
            <div>
                <h6>Dados Pessoais</h6>
            </div>
            <div class="row">
                <div class="col-lg-2">
                    Nome:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbNomeEditarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Razão Social:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbRazaoSocEditarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    CNPJ:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbCnpjEditarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
           <div class="row">
                <div class="col-lg-2">
                    Status:
                </div>
                <div class="col-lg-3">
                    <asp:DropDownList ID="ddlStatusEditarPesFis" runat="server" CssClass="form-control" AutoPostBack="True">
                        <asp:ListItem>Ativo</asp:ListItem>
                        <asp:ListItem>Inativo</asp:ListItem>
                        <asp:ListItem>Transferido</asp:ListItem>
                        <asp:ListItem>Falecido</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Telefone:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbTelefoneEditarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Celular:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbCelularEditarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    E-mail:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbEmailEditarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <h6>Endereço</h6>
            <div class="row">
                <div class="col-lg-2">
                    País:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbPaisEditarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Estado:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbEstadoEditarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Cidade:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbCidadeEditarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Rua:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbRuaEditarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Numero:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbNumEditarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Bairro:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbBairroEditarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Complemento:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbComplementoEditarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Referencia:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbReferenciaEditarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-4">
                </div>

                <div class="col-lg-1">
                    <asp:Button ID="btnSalvarEditarPesJur" runat="server" Text="Salvar" CssClass="btn btn-default btn-primary" />
                </div>

            </div>
            <br />
        </div>
    </div>
</asp:Content>

