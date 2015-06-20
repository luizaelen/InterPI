<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="RegistrarSaida.aspx.cs" Inherits="Site_PI_Paginas_RegistrarSaida" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ConteudoAdmin">
        <div class="text-center">
            <br />
            <h3>Registrar saída de valores</h3>
            <br />

            <div class="row">
                <div class="col-lg-2">
                    Data:
                </div>
                <div class="col-lg-3">
                    <!--<asp:TextBox ID="txbdatas" runat="server"  CssClass="form-control" required=""></asp:TextBox>-->
                     <input type="date" name="DataRegistrarSaida" />
                </div>
            </div>
            <br />

            <div class="row">
                <div class="col-lg-2">
                    Valor:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbvalor" runat="server" CssClass="form-control" placeholder="" required=""></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Solicitante:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbsolicitante" runat="server" CssClass="form-control" placeholder="Grupo solicitante" required=""></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Responsável:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbresponsavel" runat="server" CssClass="form-control" placeholder="Nome do responsável do grupo" required=""></asp:TextBox>
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
                    Finalidade:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txbfinalidade" runat="server" CssClass="form-control" placeholder="" required=""></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                </div>
                <div class="col-lg-3">
                    <asp:LinkButton ID="btnsaida" runat="server" Text="Registrar" CssClass="btn btn-primary" OnClick="btnsaida_Click1"></asp:LinkButton>
                </div>
            </div>
            <br />
        </div>
    </div>
</asp:Content>



