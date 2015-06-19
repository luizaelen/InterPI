<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Movimentos.aspx.cs" Inherits="Paginas_Movimentos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ConteudoAdmin">
        <div>
            <br />
            <div class="text-center">
                <h3>Movimentos Financeiros</h3>
                <br />
                <br />
            </div>

            <div class="row">
                <div class="col-lg-2">
                    <h4>Tipo:</h4>
                </div>
                <div class="col-lg-3">
                    <asp:DropDownList ID="ddltipo" runat="server" CssClass="form-control" required="" OnSelectedIndexChanged="ddltipo_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>Selecione</asp:ListItem>
                        <asp:ListItem>Entrada</asp:ListItem>
                        <asp:ListItem>Saída</asp:ListItem>
                        <asp:ListItem>Extorno</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
        </div>

        <hr style="border-color: #000066; background-color: #000066" />

        <asp:MultiView ID="mvmovimentosf" runat="server">

            <asp:View ID="ventrada" runat="server">
                <div>

                    <br />
                    <div class="text-center">
                        <h4>Entrada</h4>
                    </div>
                    <br />
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                            Origem:
                        </div>
                        <div class="col-lg-3">
                            <asp:DropDownList ID="ddlorigem" runat="server" CssClass="form-control" required="" AutoPostBack="True">
                                <asp:ListItem>Selecione</asp:ListItem>
                                <asp:ListItem>Dízimo</asp:ListItem>
                                <asp:ListItem>Oferta</asp:ListItem>
                                <asp:ListItem>Arrecadação</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <br />


                    <div>
                        <div class="row">
                            <div class="col-lg-2">
                                <asp:RadioButtonList ID="rblpesfj" runat="server" AutoPostBack="True" required="" OnSelectedIndexChanged="rblpesfj_SelectedIndexChanged" RepeatDirection="Horizontal">
                                    <asp:ListItem>Pessoa Fisica</asp:ListItem>
                                    <asp:ListItem>Pessoa Juridica</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <br />
                    </div>

                    <div class="row">
                        <div class="col-lg-2">
                            Nome:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbnome" runat="server" CssClass="form-control" required=""></asp:TextBox>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                            Forma de contribuição:
                        </div>
                        <div class="col-lg-3">
                            <asp:RadioButtonList ID="rbldoc" runat="server" AutoPostBack="True" required="" OnSelectedIndexChanged="rbldoc_SelectedIndexChanged" RepeatDirection="Vertical">
                                <asp:ListItem>Dinheiro</asp:ListItem>
                                <asp:ListItem>Cheque</asp:ListItem>
                                <asp:ListItem>Cartão Crédito</asp:ListItem>
                                <asp:ListItem>Cartão Débito</asp:ListItem>
                                <asp:ListItem>Transferência</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div>
                            <asp:Label ID="lblconfirm" runat="server" Text="OK" Visible="false"></asp:Label>
                            <asp:Label ID="lbldoc" runat="server" Text="Código documento: " Visible="false"></asp:Label><asp:TextBox ID="txbdoc" runat="server" Visible="false"></asp:TextBox>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                            Data:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="dataEntrada" runat="server" required=""></asp:TextBox>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                            Valor:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbvalorentrada" runat="server" CssClass="form-control" placeholder="" required=""></asp:TextBox>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                            Observação:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbobsentrada" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                        </div>
                        <div class="col-lg-3">
                            <asp:LinkButton ID="lbmoventradas" runat="server" Text="Salvar" CssClass="btn btn-primary" onclick="lbmoventradas_Click" Visible="False"></asp:LinkButton>
                        </div>
                    </div>
                    <br />

                </div>
            </asp:View>



            <asp:View ID="vsaida" runat="server">
                <div>

                    <br />
                    <div class="text-center">
                        <h4>Saída</h4>
                    </div>
                    <br />
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                            Data:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="dataSaida" runat="server" required=""></asp:TextBox>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                            Valor:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbvalorsaida" runat="server" CssClass="form-control" placeholder="" required=""></asp:TextBox>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                            Solicitante:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbsolicitante" runat="server" CssClass="form-control" placeholder="Grupo ou pessoa" required=""></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Responsável:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbresponsavel" runat="server" CssClass="form-control" placeholder="Nome do responsável" required=""></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Liberação:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbliberacao" runat="server" CssClass="form-control" placeholder="Nome de quem liberou" required=""></asp:TextBox>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                            Observação:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbobssaida" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                        </div>
                        <div class="col-lg-3">
                            <asp:LinkButton ID="lbmovsaidas" runat="server" Text="Salvar" CssClass="btn btn-primary" Visible="false" OnClick="lbmovsaidas_Click"></asp:LinkButton>
                        </div>
                    </div>
                    <br />

                </div>
            </asp:View>



            <asp:View ID="vextorno" runat="server">
                <div>
                    <h4>Extorno:</h4>
                    <br />
                    <br />

                    <div class="row">
                        <div class="col-lg-2">
                        </div>
                        <div class="col-lg-3">
                            <asp:LinkButton ID="lbmovextorno" runat="server" Text="Salvar" CssClass="btn btn-primary" OnClick="lbmovextorno_Click" Visible="false"></asp:LinkButton>
                        </div>
                    </div>
                    <br />

                </div>
            </asp:View>

        </asp:MultiView>

        <br />


        <div class="col-lg-3">
            <div class="row">
                <asp:Image ID="imgmovimentosf" runat="server" ImageUrl="~/img/MovimentosFinanceiros.png" Width="150px" />
            </div>
        </div>
        <br />

    </div>
</asp:Content>

