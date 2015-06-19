<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="RegistrarEntrada.aspx.cs" Inherits="Site_PI_Paginas_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ConteudoAdmin">
        <div class="text-center">
            <br />
            <h3>Registrar entrada de valores</h3>
            <br />
            <div class="row">
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-lg-2">
                            CPF:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbcpf" runat="server" CssClass="form-control" required="" parttener="[0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2}" title="Digite o CPF corretamente!"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Nome:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbnome" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Data:
                        </div>
                        <div class="col-lg-3">
                            <!--<asp:TextBox ID="txbdatae" runat="server" CssClass="form-control" required=""></asp:TextBox>-->
                             <input type="date" name="DataRegistrarEntrada" />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Tipo:
                        </div>
                        <div class="col-lg-3">
                            <asp:DropDownList ID="ddltipo" runat="server" CssClass="form-control" required="" OnSelectedIndexChanged="ddltipo_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem>Selecione</asp:ListItem>
                                <asp:ListItem>Dízimo</asp:ListItem>
                                <asp:ListItem>Oferta</asp:ListItem>
                                <asp:ListItem>Arrecadações</asp:ListItem>
                                <asp:ListItem>Bens</asp:ListItem>
                                <asp:ListItem>Outros</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </div>
                        <asp:Label ID="lbldescr" runat="server" Text="Descrição: " Visible="false"></asp:Label><asp:TextBox ID="txbtipo" runat="server" Visible="false"></asp:TextBox>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Forma de contribuição:
                        </div>
                        <div class="col-lg-3">
                            <asp:DropDownList ID="ddlformacontr" runat="server" CssClass="form-control" required="" OnSelectedIndexChanged="ddlformacontr_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem>Selecione</asp:ListItem>
                                <asp:ListItem>Dinheiro</asp:ListItem>
                                <asp:ListItem>Débito</asp:ListItem>
                                <asp:ListItem>Outros</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <asp:Label ID="lbldescri" runat="server" Text="Descrição: " Visible="false"></asp:Label><asp:TextBox ID="txbformacontr" runat="server" Visible="false"></asp:TextBox>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Destino:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbdestino" runat="server" CssClass="form-control" required=""></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                        </div>
                        <div class="col-lg-3">
                            <asp:LinkButton ID="btnentrada" runat="server" Text="Registrar" CssClass="btn btn-primary"></asp:LinkButton>
                        </div>
                    </div>
                    <br />

                </div>
                <div class="col-lg-3">
                    <div class="row">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Site PI/img/Imagem.png" />
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>


