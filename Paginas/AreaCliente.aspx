<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageInicial.master" AutoEventWireup="true" CodeFile="AreaCliente.aspx.cs" Inherits="Paginas_AreaCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <div class="text-center">
             <h3>Área do Cliente</h3>   
        
           
                <div class="row">
                    <div class ="col-lg-12">
                        <br />
                    </div>
                </div>
                
                <div class="row">
                    <div class ="col-lg-4">

                    </div>
                    <div class ="col-lg-3">
                        
                        <div class="row">
                            <div class="col-lg-5">
                                Login:
                            </div>
                            <div class="col-lg-3 ">
                                <asp:TextBox ID="txbUserName" runat="server" ></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-lg-5">
                                Senha:
                            </div>
                            <div class="col-lg-3">
                                <asp:TextBox ID="txbSenha" runat="server" TextMode="Password" ></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-5">
                                
                            </div>
                            <div class="col-lg-3">
                                <asp:LinkButton ID="btnEsqueci" runat="server" CssClass="btn " Text=" Esqueci minha senha. " OnClick="btnEsqueci_Click"></asp:LinkButton>
                            </div>
                           
                        </div>

                        <div class="row">
                            <div class="col-lg-7">
                                
                            </div>
                            <div class="col-lg-3">
                                <asp:LinkButton ID="btnEntrar" runat="server" CssClass="btn btn-default btn-primary" Text=" Entrar " OnClick="btnEntrar_Click"></asp:LinkButton>
                            </div>
                           
                        </div>


                    </div>
                    <div class ="col-lg-3">

                    </div>
                </div>
                
        </div>
    </div>

</asp:Content>

