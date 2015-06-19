<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ConsultarControleFinanceiro.aspx.cs" Inherits="Site_PI_Paginas_ConsultarControleFinanceiro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ConteudoAdmin">
        <div>
            <br />
            <div class="text-center">
                <h3>Consultar Controle Financeiro</h3>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-3">
                    <asp:RadioButtonList ID="rbconsultas" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbconsultas_SelectedIndexChanged">
                        <asp:ListItem>Consultar Entradas</asp:ListItem>
                        <asp:ListItem>Consultar Saídas</asp:ListItem>
                        <asp:ListItem>Relatório Geral</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <br />
        </div>


        <asp:MultiView ID="mvconsultar" runat="server">

            <asp:View ID="vconsultarentradas" runat="server">
                <div>

                    <h4>Entradas:</h4>
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                            CPF membro:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbcpfentrada" runat="server" CssClass="form-control" required="" parttener="[0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2}" title="Digite o CPF corretamente!"></asp:TextBox>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                            Nome membro:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbnomeentrada" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <h4>Filtrar a consulta por:</h4>
                    <br />
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="col-lg-2">
                                Status:
                            </div>
                        </div>
                        <asp:DropDownList ID="ddlstatusconsulta" runat="server" AutoPostBack="True">
                            <asp:ListItem>Selecione</asp:ListItem>
                            <asp:ListItem>Ativo</asp:ListItem>
                            <asp:ListItem>Inativo</asp:ListItem>
                            <asp:ListItem>Transferido</asp:ListItem>
                            <asp:ListItem>Falecido</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="col-lg-2">
                                Período:
                            </div>
                        </div>
                        <asp:DropDownList ID="ddlperiodos" runat="server" AutoPostBack="True">
                            <asp:ListItem>Selecione</asp:ListItem>
                            <asp:ListItem>Anual</asp:ListItem>
                            <asp:ListItem>Semestral</asp:ListItem>
                            <asp:ListItem>Trimestral</asp:ListItem>
                            <asp:ListItem>Mensal</asp:ListItem>
                            <asp:ListItem>Semanal</asp:ListItem>
                            <asp:ListItem>Diário</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="col-lg-2">
                                Tipo da contribuição:
                            </div>
                        </div>
                        <asp:DropDownList ID="ddltipocontr" runat="server" AutoPostBack="True">
                            <asp:ListItem>Selecione</asp:ListItem>
                            <asp:ListItem>Dízimo</asp:ListItem>
                            <asp:ListItem>Oferta</asp:ListItem>
                            <asp:ListItem>Arrecadações</asp:ListItem>
                            <asp:ListItem>Bens</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <br />
                </div>
            </asp:View>

            <asp:View ID="vconsultarsaidas" runat="server">
                <div>

                    <h4>Saídas:</h4>
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                            CPF membro:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbcpfsaida" runat="server" CssClass="form-control" required="" parttener="[0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2}" title="Digite o CPF corretamente!"></asp:TextBox>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                            Nome membro:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbnomesaida" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                </div>
            </asp:View>
        </asp:MultiView>



        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-3">
                <asp:LinkButton ID="btnconsultacontrfinan" runat="server" Text="Consultar" CssClass="btn btn-primary" OnClick="btnconsultacontrfinan_Click"></asp:LinkButton>
            </div>
        </div>
        <br />

        <div class="col-lg-7">
            <div>
                <table class="table table-hover" id="tabelaConsulta" runat="server" visible="false">
                    <tr>
                        <td>Nome</td>
                        <td>Valor</td>
                        <td>Total</td>
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

    </div>

</asp:Content>

