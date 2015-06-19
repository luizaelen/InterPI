<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageInicial.master" AutoEventWireup="true" CodeFile="Contato.aspx.cs" Inherits="Paginas_Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="text-center">
             <h3>Fale Conosco</h3> 
             <div class="row">
                 <div class="col-lg-12">
                     <div class="contato">
                         Com o serviço de atendimento, você pode tirar todas suas dúvidas com a Equipe "We Trust".
                         Preencha os dados a baixo:
                      
                     </div>
                        <br />
                 </div>
             </div>
              
             <div class="row">
                <div class="col-lg-2">
                    Nome:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            
            <div class="row">
                <div class="col-lg-2">
                    E-mail:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ></asp:TextBox>
                </div>
            </div>
       
            <div class="row">
                <div class="col-lg-2">
                    Telefone:
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txtTelefone" runat="server" CssClass="form-control" ></asp:TextBox>
                </div>
            </div>
        </div>
        
        <div class="row">
                <div class="col-lg-2">
                    Mensagem:
                </div>
                <div class="col-lg-3">
                    <textarea id="txaMensagem" cols="60" rows="6" ></textarea>
                </div>
            </div>
        <br />
        <div class="row">
                <div class="col-lg-4">
                </div>
              <div class="col-lg-2">
                  <asp:LinkButton ID="btnLimpar" runat="server" CssClass="btn btn-default btn-primary" Text=" Limpar " OnClick="btnLimpar_Click"></asp:LinkButton>
                </div>
                <div class="col-lg-1">
                  <asp:LinkButton ID="btnEnviar" runat="server" CssClass="btn btn-default btn-primary" Text=" Enviar " OnClick="btnEnviar_Click"></asp:LinkButton>
                </div>
            </div>
        </div>
</asp:Content>
 