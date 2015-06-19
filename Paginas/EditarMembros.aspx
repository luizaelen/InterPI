<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="EditarMembros.aspx.cs" Inherits="Paginas_EditarMembros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="ConteudoAdmin">
        <div>
            <br />
            <div class="text-center">
                <h3>Editar Membros</h3>
            </div>
            <div class="row">
                <div class="col-lg-2">
                    <asp:RadioButtonList ID="rbConsultaEditar" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbConsultaEditar_SelectedIndexChanged">
                        <asp:ListItem>Pessoa Fisica</asp:ListItem>
                        <asp:ListItem>Pessoa Juridica</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <br />
        </div>

        <asp:MultiView ID="mvConsultaEditar" runat="server">

            <asp:View ID="vConsultaEditarPesFis" runat="server">
                <div class="text-center">

                    <br />
                    <div class="row">
                        <div class="col-lg-1">
                            CPF: 
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbCpfConsultar" runat="server" CssClass="form-control" required=""></asp:TextBox>
                        </div>
                        <div class="col-lg-1">

                        </div>
                        <div class="col-lg-3">
                            <asp:Button ID="btnConsultarEditarPesFis" runat="server" Text="Consultar" CssClass="btn btn-default btn-primary" OnClick="btnConsultarEditarPesFis_Click" />
                        </div>
                    </div>
                    <br />
                    <div class="col-lg-7">
                        <div>
                            <table class="table table-hover" id="tabelaEditarPesFis" runat="server" visible="false">
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
                            <div class="row">
                                <div class="col-lg-4"></div>
                                <div class="col-lg-3">
                                    <asp:Button ID="btnEditarPesFis" runat="server" Text="Editar" CssClass="btn btn-default btn-primary" OnClick="btnEditarPesFis_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </asp:View>
            <asp:View ID="vConsultaEditarPesJur" runat="server">

                <div class="text-center">

                    <br />
                    <div class="row">
                        <div class="col-lg-1">
                            CNPJ: 
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbCnpj" runat="server" CssClass="form-control" required=""></asp:TextBox>
                        </div>
                        <div class="col-lg-1">

                        </div>
                        <div class="col-lg-3">
                            <asp:Button ID="btnConsultaEditarPesJur" runat="server" Text="Consultar" CssClass="btn btn-default btn-primary" OnClick="btnConsultaEditarPesJur_Click" />
                        </div>
                    </div>
                    <br />
                    <div class="col-lg-7">
                        <div>
                            <table class="table table-hover" id="tabelaEditarPesJur" runat="server" visible="false">
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
                            <div class="row">
                                <div class="col-lg-4"></div>
                                <div class="col-lg-3">
                                    <asp:Button ID="btnEditarPesJur" runat="server" Text="Editar" CssClass="btn btn-default btn-primary" OnClick="btnEditarPesJur_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:View>
        </asp:MultiView>



    </div>
</asp:Content>

