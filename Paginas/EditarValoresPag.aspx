<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="EditarValoresPag.aspx.cs" Inherits="Site_PI_Paginas_EditarValoresPag" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ConteudoAdmin">
        <div class="text-center">
            <br />
            <h3>Alterar entrada de valores</h3>
            <br />
                    <div class="row">
                        <div class="col-lg-2">
                            CPF:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbcpfeditar" runat="server" CssClass="form-control" required="" parttener="[0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2}" title="Digite o CPF corretamente!"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Nome:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbnomeeditar" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Data:
                        </div>
                        <div class="col-lg-3">
                            <!--<asp:TextBox ID="txbdataeeditar" runat="server" CssClass="form-control" required=""></asp:TextBox>-->
                             <input type="date" name="DataEditarValores" />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Tipo:
                        </div>
                        <div class="col-lg-3">
                            <asp:DropDownList ID="ddltipoeditar" runat="server" CssClass="form-control" required="" AutoPostBack="True">
                                <asp:ListItem>Selecione</asp:ListItem>
                                <asp:ListItem>Dízimo</asp:ListItem>
                                <asp:ListItem>Oferta</asp:ListItem>
                                <asp:ListItem>Arrecadações</asp:ListItem>
                                <asp:ListItem>Bens</asp:ListItem>
                                <asp:ListItem>Outros</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </div>
                        <asp:Label ID="lbldescreditar" runat="server" Text="Descrição: " Visible="false"></asp:Label><asp:TextBox ID="txbtipo" runat="server" Visible="false"></asp:TextBox>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Forma de contribuição:
                        </div>
                        <div class="col-lg-3">
                            <asp:DropDownList ID="ddlformacontreditar" runat="server" CssClass="form-control" required=""  AutoPostBack="True">
                                <asp:ListItem>Selecione</asp:ListItem>
                                <asp:ListItem>Dinheiro</asp:ListItem>
                                <asp:ListItem>Débito</asp:ListItem>
                                <asp:ListItem>Outros</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <asp:Label ID="lbldescrieditar" runat="server" Text="Descrição: " Visible="false"></asp:Label><asp:TextBox ID="txbformacontr" runat="server" Visible="false"></asp:TextBox>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Destino:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbdestinoeditar" runat="server" CssClass="form-control" required=""></asp:TextBox>
                        </div>
                    </div>
                    <br />
            <div class="row">
                        <div class="col-lg-2">
                        </div>
                        <div class="col-lg-3">
                            <asp:LinkButton ID="lbeditarvalorespag" runat="server" Text="Salvar" CssClass="btn btn-primary"></asp:LinkButton>
                        </div>
                    </div>
                    <br />
          </div>
    </div>
</asp:Content>

