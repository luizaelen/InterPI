<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="EditarAtividade.aspx.cs" Inherits="Paginas_EditarAtividade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ConteudoAdmin">
        <div class="text-center">
            <h3>Editar Atividades</h3>
            <div class="row">
                <div class="col-lg-2">
                </div>
            </div>
            <br />
        </div>
        <div>

            <br />
            <div class="row">
                <div class="col-lg-2">
                    Tipo Evento: 
                    <br />
                </div>
                <div class="col-lg-3">
                       <asp:DropDownList ID="dpdtipoevento" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control">
                        <asp:ListItem>Reunião</asp:ListItem>
                        <asp:ListItem>Evento</asp:ListItem>
                        <asp:ListItem>Retiro</asp:ListItem>
                        <asp:ListItem>Encontro</asp:ListItem>
                        <asp:ListItem>Acampamento</asp:ListItem>
                        <asp:ListItem>Excursão</asp:ListItem>
                        <asp:ListItem>Outros</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </div>
                <asp:Label ID="lbldescricao" runat="server" Text="Descrição:"></asp:Label><asp:TextBox ID="txttipoevento" runat="server"></asp:TextBox>
            </div>
            <br />
            <div class="col-lg-3"></div>
                <div class="col-lg-3">
                    <asp:Button ID="btnconsultaratividade" runat="server" Text="Consultar" CssClass="btn btn-default btn-primary" OnClick="btnconsultaratividade_Click"  />
                </div>
            </div>
            
            <br />
           
                <div>
                    <table class="table table-hover" id="tabelaconsultaratividade" runat="server" visible="false">
                        <tr>
                            <td>Tipo Evento</td>
                            <td>Público Alvo</td>
                            <td>Data de inicio</td>
                            <td>Data final</td>
                            <td>Horário</td>
                            <td>Local</td>
                            <td>Responsável</td>
                            <td>Contato</td>
                            <td>Status</td>
                        </tr>

                        <tr>
                            <td> <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control">
                        <asp:ListItem>Reunião</asp:ListItem>
                        <asp:ListItem>Evento</asp:ListItem>
                        <asp:ListItem>Retiro</asp:ListItem>
                        <asp:ListItem>Encontro</asp:ListItem>
                        <asp:ListItem>Acampamento</asp:ListItem>
                        <asp:ListItem>Excursão</asp:ListItem>
                        <asp:ListItem>Outros</asp:ListItem>
                    </asp:DropDownList></td>
                            <td>xxx</td>
                            <td>xxx</td>
                            <td>xxx</td>
                            <td>xxx</td>
                            <td>xxx</td>
                            <td>xxx</td>
                            <td>xxx</td>
                            <td><asp:RadioButtonList ID="rbstatus" runat="server">
                                <asp:ListItem>ativo</asp:ListItem>
                                <asp:ListItem>inativo</asp:ListItem>
                                </asp:RadioButtonList></td>
                            <td> <asp:Button ID="btnsalvar" runat="server" Text="salvar" CssClass="form-control" /></td>
                        </tr>

                        <tr>
                            <td> <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control">
                        <asp:ListItem>Reunião</asp:ListItem>
                        <asp:ListItem>Evento</asp:ListItem>
                        <asp:ListItem>Retiro</asp:ListItem>
                        <asp:ListItem>Encontro</asp:ListItem>
                        <asp:ListItem>Acampamento</asp:ListItem>
                        <asp:ListItem>Excursão</asp:ListItem>
                        <asp:ListItem>Outros</asp:ListItem>
                    </asp:DropDownList></td>
                            <td>xxx</td>
                            <td>xxx</td>
                            <td>xxx</td>
                            <td>xxx</td>
                            <td>xxx</td>
                            <td>xxx</td>
                            <td>xxx</td>
                            <td> <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                <asp:ListItem>ativo</asp:ListItem>
                                <asp:ListItem>inativo</asp:ListItem>
                                </asp:RadioButtonList></td>
                             <td> <asp:Button ID="btnsalvar2" runat="server" Text="salvar" CssClass="form-control" /></td>
                        </tr>
                    </table>
               
            </div>
        </div>
</asp:Content>
