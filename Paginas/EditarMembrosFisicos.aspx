<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="EditarMembrosFisicos.aspx.cs" Inherits="Paginas_EditarMembros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ConteudoAdmin">
        <div>
            <br />
            <div class="text-center">
                <h3>Editar</h3>
            </div>

            <br />

            <h7>Dados Pessoais</h7>
            <div class="row">
                <div class="col-lg-2">
                    Nome:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbNomeEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    RG:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbRgEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    CPF:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbCpfEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
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
                            Cargos Ocupados:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbCargoOcuCadastrarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
            <div class="row">
                <div class="col-lg-2">
                    Telefone:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbTelefoneEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Celular:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbCelularEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    E-mail:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbEmailEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Sexo:
                </div>
                 <div class="col-lg-3">
                            <asp:DropDownList ID="ddlSexoCadastrarPesFis" runat="server" required="">
                                <asp:ListItem>Feminino</asp:ListItem>
                                <asp:ListItem>Masculino</asp:ListItem>
                            </asp:DropDownList>
                        </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Data de Nascimento:
                </div>
                <div class="col-lg-3">
                   <!-- <asp:TextBox ID="txbDataNascEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>-->
                     <input type="date" name="DataNascimentoEditarPesFis" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Estado Civil:
                </div>
                <div class="col-lg-3">
                            <asp:DropDownList ID="ddlEstadoCivilCadastrarPesFis" runat="server">
                                <asp:ListItem>Solteiro(a)</asp:ListItem>
                                <asp:ListItem>Casado(a)</asp:ListItem>
                                <asp:ListItem>Divorciado(a)</asp:ListItem>
                                <asp:ListItem>Viuvo(a)</asp:ListItem>
                            </asp:DropDownList>
                        </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Data de Batismo:
                </div>
                <div class="col-lg-3">
                   <!-- <asp:TextBox ID="txbDataBatismoEditarPesFis" runat="server" CssClass="form-control" ></asp:TextBox>-->
                     <input type="date" name="DataBatismoEditarPesFis" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Tipo Sangineo:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbTipoSangEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <h7>Endereço</h7>
            <div class="row">
                <div class="col-lg-2">
                    País:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbPaisEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Estado:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbEstadoEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Cidade:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbCidadeEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Rua:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbRuaEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Numero:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbNumeroEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Bairro:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbBairroEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Complemento:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbComplementoEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Referencia:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbReferenciaEditarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />

            <div class="row">
                <div class="col-lg-4">
                </div>

                <div class="col-lg-1">
                    <asp:Button ID="btnSalvarPesfis" runat="server" Text="Salvar" CssClass="btn btn-default btn-primary" />
                </div>

            </div>
            <br />

        </div>
    </div>
</asp:Content>

