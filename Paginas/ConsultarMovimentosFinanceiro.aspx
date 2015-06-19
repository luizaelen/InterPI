<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ConsultarMovimentosFinanceiro.aspx.cs" Inherits="Site_PI_Paginas_ConsultarControleFinanceiro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ConteudoAdmin">
        <div class="text-center">
            <div>
                <br />
                <h3>Consultar Controle Financeiro</h3>
                <br />

                <br />
                <h4>Mês atual</h4>
                <br />

                <div>
                    <div>
                        <table class="table table-hover" id="tabelamovmes" runat="server" visible="true">
                            <tr>
                                <td>Data</td>
                                <td>Entradas</td>
                                <td>Saídas</td>
                                <td>Extornos</td>
                                <td>Origem</td>
                            </tr>

                            <tr>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                            </tr>

                            <tr>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>

                            </tr>
                            <tr>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                            </tr>
                            <tr>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                            </tr>
                            <tr>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                            </tr>
                            <tr>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                                <td>xxx</td>
                            </tr>
                        </table>
                    </div>
                    <br />
                </div>

                <hr style="border-color: #000066; background-color: #000066" />

                <div class="row">
                    <div class="col-lg-3">
                        <asp:RadioButtonList ID="rblconsultas" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblconsultas_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem> Consultar Entradas </asp:ListItem>
                            <asp:ListItem> Consultar Saídas </asp:ListItem>
                            <asp:ListItem> Relatório Geral </asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <br />
            </div>
        </div>


        <asp:MultiView ID="mvconsultar" runat="server">

            <asp:View ID="vconsultarentradas" runat="server">
                <div>

                    <br />
                    <div class="text-center">
                        <h4>Entradas:</h4>
                    </div>
                    <br />
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

                    <div>
                        <div class="row">
                            <div class="col-lg-2">
                                <asp:RadioButtonList ID="rblnomepesfj1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                                    <asp:ListItem>Pessoa Fisica</asp:ListItem>
                                    <asp:ListItem>Pessoa Juridica</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <br />
                    </div>

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

                    <br />
                    <div class="text-center">Período:</div>
                    <br />
                    <br />

                    <div>
                        <div class="row">
                            <div class="col-lg-2">
                                De: 
                            </div>
                            <div class="col-lg-3">
                                <asp:Calendar ID="calinicio" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                                </asp:Calendar>
                            </div>
                            <div class="row">
                                <div class="col-lg-2">
                                    Até:
                                </div>
                                <div class="col-lg-3">
                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                        <WeekendDayStyle BackColor="#CCCCFF" />
                                    </asp:Calendar>
                                </div>
                            </div>

                        </div>
                        <br />
                    </div>
                    <br />
                    <br />

                    



                    <div class="row">
                        <div class="col-lg-3">
                            <div class="col-lg-2">
                                Origem da contribuição:
                            </div>
                        </div>
                        <asp:DropDownList ID="ddlorigemcontr" runat="server" AutoPostBack="True">
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

                                       <br />
                    <div class="text-center">
                        <h4>Saídas:</h4>
                    </div>
                    <br />
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

                    <div>
                        <div class="row">
                            <div class="col-lg-2">
                                <asp:RadioButtonList ID="rblnomepesfj2" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                                    <asp:ListItem>Pessoa Fisica</asp:ListItem>
                                    <asp:ListItem>Pessoa Juridica</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <br />
                    </div>

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
                <asp:LinkButton ID="lbconsultacontrfinan" runat="server" Text="Consultar" CssClass="btn btn-primary" OnClick="lbconsultacontrfinan_Click" Visible="false"></asp:LinkButton>
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

