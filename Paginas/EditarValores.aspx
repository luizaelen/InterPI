<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="EditarValores.aspx.cs" Inherits="Site_PI_Paginas_EditarValores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ConteudoAdmin">
        <div>
            <br />
            <div>
                <div class="text-center">
                    <h3>Alterar Controle Financeiro</h3>
                </div>
            </div>

            <br />
            <div class="row">
                <div class="col-lg-3">
                    <asp:RadioButtonList ID="rbleditarvalores" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbleditarvalores_SelectedIndexChanged1">
                        <asp:ListItem>Alterar Entradas</asp:ListItem>
                        <asp:ListItem>Alterar Saídas</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <br />
        </div>


        <asp:MultiView ID="mveditarvalores" runat="server">
            <asp:View ID="veditarvaloresentrada" runat="server">

                <h4>Alterar Entradas:</h4>
                <br />

                <div class="row">
                    <div class="col-lg-2">
                        CPF membro:
                    </div>
                    <div class="col-lg-3">
                        <asp:TextBox ID="txbcpfeditar" runat="server" CssClass="form-control" required="" parttener="[0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2}" title="Digite o CPF corretamente!"></asp:TextBox>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-lg-2">
                        Nome membro:
                    </div>
                    <div class="col-lg-3">
                        <asp:TextBox ID="txbnomeeditar" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-lg-2">

                    </div>
                    <div class="col-lg-3">
                        <asp:LinkButton ID="lbtabelaconsultar" runat="server" Text="Consultar" CssClass="btn btn-primary" OnClick="lbtabelaconsultar_Click"></asp:LinkButton>
                    </div>
                </div>
                <br />

                <asp:MultiView ID="mvtabelaeditar" runat="server">
                <asp:View ID="Vteste" runat="server">
                    <div class="col-lg-7">
                        <div>
                            <table class="table table-hover" id="tabelaeditarvalores" runat="server" visible="true">
                                <tr>
                                    <td>Nome</td>
                                    <td>Tipo de contribuição</td>
                                    <td>Valor</td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </asp:View>
                </asp:MultiView>

                <div class="row">
                    <div class="col-lg-3">
                        <asp:LinkButton ID="lbeditarvalores" runat="server" Text="Alterar" CssClass="btn btn-primary" PostBackUrl="~/Paginas/EditarValoresPag.aspx" OnClick="lbeditarvalores_Click1"></asp:LinkButton>
                    </div>
                </div>
                <br />
            </asp:View>


            <asp:View ID="veditarvaloressaida" runat="server">
                <h4>Alterar Entradas:</h4>
                <br />
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>

