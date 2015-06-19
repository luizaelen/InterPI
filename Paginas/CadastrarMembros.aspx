<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="CadastrarMembros.aspx.cs" Inherits="Paginas_CadastrarMembros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ConteudoAdmin">
        <div>
            <br />
            <div class="text-center">
                <h3>Cadastrar Membros</h3>
            </div>
            <div class="row">
                <div class="col-lg-2">
                    <asp:RadioButtonList ID="rbMembros" runat="server" OnSelectedIndexChanged="rbMembros_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>Pessoa Fisica</asp:ListItem>
                        <asp:ListItem>Pessoa Juridica</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <br />
        </div>

        <asp:MultiView ID="MVPrincipalCadastrar" runat="server">

            <asp:View ID="VCadastrarPessoaFisica" runat="server">
                <div>
                    <div class="row">
                        <div class="col-lg-6">

                        </div>

                        <div class="col-lg-6">


                        </div>
                    </div>
                    <h6>Dados Pessoais</h6>

                    <div class="row">
                       
                        <div class="col-lg-2">
                            Nome:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbNomeCadastrarPesFis" runat="server" CssClass="form-control" required=""></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            RG:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbRgCadastrarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            CPF:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbCpfCadastrarPesFis" runat="server" CssClass="form-control" required=""></asp:TextBox>
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
                            <asp:TextBox ID="txbTelefoneCadastrarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Celular:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbCelularCadastrarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            E-mail:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbEmailCadastrarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
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
                            <!--<asp:TextBox ID="txbDataNascCadastrar" runat="server" CssClass="form-control" required=""></asp:TextBox>-->
                             <input type="date" name="DataNascimentoCadastrarMembros" />
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
                            <!--<asp:TextBox ID="txbDataBatismoCadastrarPesFis" runat="server" CssClass="form-control" ></asp:TextBox>-->
                             <input type="date" name="DataBatismoCadastrarMembros" />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Tipo Sangineo:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbTipoSangCadastrarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>


                    <br />
                    <h6>Endereço</h6>
                    <div class="row">
                        <div class="col-lg-2">
                            País:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbPaisCadastrarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Estado:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbEstadoCadastrarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Cidade:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbCidadeCadastrarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Rua:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbRuaCadastrarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Numero:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbNumeroCadastrarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Bairro:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbBairroCadastrarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Complemento:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbComplementoCadastrarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Referencia:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbReferenciaCadastrarPesFis" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-12">
                            <asp:CheckBox ID="cbRecInfoCadastrarPesFis" runat="server" Text="Receber Informações da Igreja por E-mail" />
                        </div>
                        
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-lg-4">
                        </div>
                        <div class="col-lg-1">
                            <asp:Button ID="btnCadastrarPesFis" runat="server" Text="Cadastrar" CssClass="btn btn-default btn-primary" OnClick="btnCadastrarPesFis_Click" />
                        </div>
                    </div>
                    <br />
                </div>
            </asp:View>





            <asp:View ID="VPessoaJuridica" runat="server">
                <div>

                    <h6>Dados Pessoais</h6>

                    <div class="row">
                        <div class="col-lg-2">
                            Nome:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbNomeCadastrarPesJur" runat="server" CssClass="form-control" required=""></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Razão Social:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbRazaoSocCadastrarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            CNPJ:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbCnpjCadastrarPesJur" runat="server" CssClass="form-control" required=""></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Telefone:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbTelefoneCadastrarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Celular:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbCelularCadastrarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            E-mail:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbEmailCadastrarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <h6>Endereço</h6>
                    <div class="row">
                        <div class="col-lg-2">
                            País:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbPaisCadastrarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Estado:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbEstadoCadastrarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Cidade:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbCidadeCadastrarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Rua:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbRuaCadastrarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Numero:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbNumCadastrarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Bairro:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbBairroCadastrarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Complemento:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbComplementoCadastrarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-2">
                            Referencia:
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="txbReferenciaCadastrarPesJur" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-12">
                            <asp:CheckBox ID="cbRecInfoCadastrarPesJur" runat="server" Text="Receber Informações da Igreja por E-mail" />
                        </div>
                        
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-4">
                        </div>
                        <div class="col-lg-1">
                            <asp:Button ID="btnCadastrarPesJur" runat="server" Text="Cadastrar" CssClass="btn btn-default btn-primary" OnClick="btnCadastrarPesJur_Click" />
                        </div>
                    </div>
                    <br />
                </div>
            </asp:View>
        </asp:MultiView>


    </div>
</asp:Content>

