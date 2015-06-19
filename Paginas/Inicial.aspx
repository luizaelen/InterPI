<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageInicial.master" AutoEventWireup="true" CodeFile="Inicial.aspx.cs" Inherits="Paginas_Inicial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container"/>
  <div class="jumbotron text-center">
    <h1>        </h1>
    <p class="lead"><br /><br /><br /><br /><br /><br /></p>
   <!-- ex Botão <p><a class="btn btn-large btn-success" href="#" target="ext">More Examples</a></p> -->
  </div>
       
  <div class="row">
    <div class="col-lg-6">
      <h3>Porque We Thrust Management?</h3>
  <br />
      Mas Software de Gestão não se Aplica a Empresas?
      Qual a Importância desta Ferramenta para Instituições Religiosas?
        <br />
        We Thrust Management busca de maneira rápida, eficaz e segura colocar sua instituição em sintonia
      com as mais recentes ferramentas de gestão que a tecnologia pode oferecer.<br />
      Se você acredita que a tecnologia e o conhecimento pode ajudar na administração e crescimento da sua instituição, seu lugar é aqui!  
  </div>
  <div class="col-lg-6">
      <asp:Image ID="Image1" ImageUrl="~/img/LOGO.png" runat="server" Height="450px" Width="450px" />
      </div>
    </div>

    </div>

</asp:Content>

