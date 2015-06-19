<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="RegistrarUsuario.aspx.cs" Inherits="Paginas_registerUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ConteudoAdmin">
        <link href="../css/StyleTabela.css" rel="stylesheet" />
        <center><h3>Cadastro de Usuário</h3></center>
        <br />
        <br />

        <table>
            <tr class="test">
                <td class="alinhar">
                    <asp:Label ID="Label5" runat="server" Text="Codigo"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtCodigo" runat="server" Width="120px" CssClass="form-control" required title="" Enabled="False"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label><asp:Label ID="Label19" runat="server" Text="*" ForeColor="Red"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtNome" runat="server" Width="450px" CssClass="form-control" required title=""></asp:TextBox></td>
                <td>
                    <asp:Label ID="lblExNome" runat="server" Text="&nbspEx: Carlos Eduardo Siqueira"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label2" runat="server" Text="Sexo"></asp:Label><asp:Label ID="Label20" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropSexo" CssClass="form-control" required title="" runat="server" Width="120px">
                        <asp:ListItem>Selecione</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar" colspan="1">
                    <asp:Label ID="Label3" runat="server" Text="Data Nascimento"></asp:Label><asp:Label ID="Label21" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                
                <td>
                   <!-- <asp:TextBox ID="txtData" CssClass="form-control" required title="" runat="server" Width="160px"></asp:TextBox>-->
                     <input type="date" name="DataRegistrarUsuario" />
                </td>
                 <td>
                    <asp:Label ID="lblExData" runat="server" Text="&nbspEx: dd/mm/aaaa"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label4" runat="server" Text="RG "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRG" CssClass="form-control" runat="server" Width="160px"></asp:TextBox>
                </td>
                 <td>
                    <asp:Label ID="lblExRg" runat="server" Text="&nbspObs: Sem pontos e traços Ex: 001112223"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="1" class="alinhar">
                    <asp:Label ID="TextBox3" runat="server" Text="CPF"> </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCPF" CssClass="form-control" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblExCpf" runat="server" Text="&nbspObs: Sem pontos e traços Ex: 00011122233"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label10" runat="server" Text="Login">  </asp:Label>
                    <asp:Label ID="Label22" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLogin" CssClass="form-control" required title="" Width="160px" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblExLogin" runat="server" Text="&nbspObs: Somente letras e números"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label11" runat="server" Text="E-Mail"></asp:Label>
                    <asp:Label ID="Label23" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" CssClass="form-control" required title="" Width="220px" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblExEmail" runat="server" Text="&nbspEx: exemplo@exemplo.com"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label12" runat="server" Text="Confirmar e-mail"></asp:Label>
                    <asp:Label ID="Label24" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtConfEmail" CssClass="form-control" required title="" Width="220px" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label6" runat="server" Text="Telefone "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTelefone" CssClass="form-control" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblExTelefone" runat="server" Text="&nbsp Obs: Somente números Ex: ddd00000000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label7" runat="server" Text="Celular"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCelular" CssClass="form-control" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblExCelular" runat="server" Text="&nbsp Obs: Somente números Ex: ddd000000000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="1" class="alinhar">
                    <asp:Label ID="Label8" runat="server" Text="Celular"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCelular2" CssClass="form-control" runat="server" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label9" runat="server" Text="Endereço"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEnder" CssClass="form-control" runat="server" Width="450px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Nº"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNumero" CssClass="form-control" runat="server" Width="56px"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label17" runat="server" Text="CEP"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCep" CssClass="form-control" runat="server" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label13" runat="server" Text="Cidade"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCidade" CssClass="form-control" Width="220px" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label14" runat="server" Text="Bairro"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtBairro" CssClass="form-control" Width="220px" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label15" runat="server" Text="UF"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropEstado" CssClass="form-control" runat="server" Width="120px">
                        <asp:ListItem>Selecione</asp:ListItem>
                        <asp:ListItem>AC</asp:ListItem>
                        <asp:ListItem>AL</asp:ListItem>
                        <asp:ListItem>AP</asp:ListItem>
                        <asp:ListItem>AM</asp:ListItem>
                        <asp:ListItem>BA</asp:ListItem>
                        <asp:ListItem>CE</asp:ListItem>
                        <asp:ListItem>DF</asp:ListItem>
                        <asp:ListItem>ES</asp:ListItem>
                        <asp:ListItem>GO</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem>MT</asp:ListItem>
                        <asp:ListItem>MS</asp:ListItem>
                        <asp:ListItem>MG</asp:ListItem>
                        <asp:ListItem>PA</asp:ListItem>
                        <asp:ListItem>PE</asp:ListItem>
                        <asp:ListItem>PB</asp:ListItem>
                        <asp:ListItem>PR</asp:ListItem>
                        <asp:ListItem>PI</asp:ListItem>
                        <asp:ListItem>RJ</asp:ListItem>
                        <asp:ListItem>RR</asp:ListItem>
                        <asp:ListItem>RS</asp:ListItem>
                        <asp:ListItem>RN</asp:ListItem>
                        <asp:ListItem>RO</asp:ListItem>
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>SP</asp:ListItem>
                        <asp:ListItem>SE</asp:ListItem>
                        <asp:ListItem>TO</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="alinhar">
                    <asp:Label ID="Label18" runat="server" Text="País"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPais" CssClass="form-control" runat="server" Width="160px"></asp:TextBox>
                </td>
                </tr>
             <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                                <td>
                     <asp:Label ID="Label25" runat="server" Text="*" ForeColor="Red"></asp:Label>
               
        <asp:Label ID="Label26" Font-Size="15px" runat="server" Text="Campos Obrigatórios"></asp:Label>
                </td>
            </tr>
        </table>
        <center>
            <br />
   
   <br />
                                    
                            <asp:Button ID="btnCadastro" runat="server" CssClass="btn btn-default btn-primary" Text="Cadastrar" />             
                <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-default btn-primary" Text="Cancelar" />
           
            </center>
        <br />
        <br />
    </div>
</asp:Content>

