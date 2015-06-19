<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageInicial.master" AutoEventWireup="true" CodeFile="Funcionalidades.aspx.cs" Inherits="Paginas_Funcionalidades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container">
  <div class="text-center">
    <div class="row">
    <div class="col-lg-12">
         <h2> O que o We Trust te oferece </h2>
        <br />
        </div>
    </div>
      </div>
     
      <div class="row"><!--<tr></tr> -->
          <div class="col-lg-2">
              <asp:Image ID="imagemPX" runat="server" Height="150px" ImageUrl="~/img/CadastroMembros.png"  Width="150px" />
          </div>
          <div class="col-lg-7">
              <h3>Cadastro e Gerenciamento de Membros</h3>
              Sempre a mão, de forma atual, rápida e dinâmica. A forma mais fácil de obter informações confiáveis e atualizadas sobre qualquer membro cadastrado. Leve o escritório onde você estiver. 
          </div>
      </div>
            <br />
            
      <div class="row"><!--<tr></tr> -->
          <div class="col-lg-2">
              <asp:Image ID="image1" runat="server" Height="150px" ImageUrl="~/img/CadastroUsuario.png" Width="150px" />
          </div>
          <div class="col-lg-7">
              <h3>Cadastro e Gerenciamento de Usuários</h3>
              Informações precisas e controle personalizado das açoes e dados de seus colaboradores. O seu braço direito quando o assunto é Recursos Humanos.
          </div>
      </div>
            
            <br />
    <div class="row"><!--<tr></tr> -->
          <div class="col-lg-2">
              <asp:Image ID="image2" runat="server" Height="150px" ImageUrl="~/img/Agenda.png" Width="150px" />
          </div>
          <div class="col-lg-7">
              <h3>Agenda</h3>
              Organize-se: jamais perca prazos, datas especiais ou eventos. Nos dias atuais, o tempo pode ser seu maior vilão no trabalho, por isso é preciso dominá-lo. Com uma agenda dinâmica e sempre visível, não haverá desculpas para perda de tempo ou compromisso.
          </div>
      </div>
            
            <br />
        <div class="row"><!--<tr></tr> -->
          <div class="col-lg-2">
              <asp:Image ID="image3" runat="server" Height="150px" ImageUrl="~/img/Financeiro.png" Width="150px" />
          </div>
          <div class="col-lg-7">
              <h3>Financeiro</h3>
               A transparência e segurança que a seriedade exige, sem burocracias, sem complicação.  
          </div>
      </div>
            
            <br />
       <div class="row"><!--<tr></tr> -->
          <div class="col-lg-2">
              <asp:Image ID="image4" runat="server" Height="150px" ImageUrl="~/img/Aniversariantes.png" Width="150px" />
          </div>
          <div class="col-lg-7">
              <h3>Aniversários</h3>
               Aumentando contatos, diminuindo distâncias.
          </div>
      </div> 
   </div>
            
            <br />
</asp:Content>

