<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="PesquisarMembros.aspx.cs" Inherits="Paginas_PesquisarMembros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ConteudoAdmin">
        <div>
            <br />
            <div class="text-center">
                <h3>Consultar Membros</h3>
            </div>
            <div class="row">
                <div class="col-lg-2">
                    <asp:RadioButtonList ID="rbConsulta" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbConsulta_SelectedIndexChanged">
                        <asp:ListItem>Pessoa Fisica</asp:ListItem>
                        <asp:ListItem>Pessoa Juridica</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <br />
        </div>

        <asp:MultiView ID="mvConsulta" runat="server">

            <asp:View ID="vConsultaPesFis" runat="server">
                <div>

                    <br />
                    <div class="row">
                        <div class="col-lg-1">
                            CPF: 
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbCpfConsultaPesFis" runat="server" CssClass="form-control" required=""></asp:TextBox>
                        </div>
                        <div class="col-lg-2"></div>
                        <div class="col-lg-5">
                            <asp:Button ID="btnConsultarPesFis" runat="server" Text="Consultar" CssClass="btn btn-primary" OnClick="btnConsultarPesFis_Click" />
                        </div>
                    </div>
                    <br />
                    <div class="col-lg-7">
                        <div>
                            <table class="table table-hover" id="tabelaPesFis" runat="server" visible="false">
                                <tr>
                                    <td>Nome</td>
                                    <td>RG</td>
                                    <td>CPF</td>
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

            </asp:View>
            <asp:View ID="vConsultaPesJur" runat="server">

                <div>

                    <br />
                    <div class="row">
                        <div class="col-lg-1">
                            CNPJ: 
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbCnpjConsultaPesJur" runat="server" CssClass="form-control" required=""></asp:TextBox>
                        </div>
                        
                        <div class="col-lg-2"></div>
                        <div class="col-lg-3">
                            <asp:Button ID="btnConsultaPesJur" runat="server" Text="Consultar" CssClass="btn btn-default btn-primary" OnClick="btnConsultaPesJur_Click" />
                        </div>
                    </div>
                    <br />
                    <div class="col-lg-7">
                        <div>
                            <table class="table table-hover" id="tabelaPesJur" runat="server" visible="false">
                                <tr>
                                    <td>Nome</td>
                                    <td>CNPJ</td>
                                    <td>Telefone</td>
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
            </asp:View>
        </asp:MultiView>



    </div>

</asp:Content>

