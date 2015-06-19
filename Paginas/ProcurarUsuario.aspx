<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ProcurarUsuario.aspx.cs" Inherits="Paginas_pesquisarUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div id="ConteudoAdmin">
       
      <link href="../css/StyleTabela.css" rel="stylesheet" />
       <center>        
          <h3>
           Consultar Usuário
        <br/>
        <br/>
       </h3>
           </center>
       <table>
           
           <tr>
               <td>
                   <asp:Label ID="Label1" runat="server"  Text="Codigo"></asp:Label>
                   </td>
               <td>
                   <asp:TextBox ID="txtCod" CssClass="form-control" Width="150px" runat="server" ></asp:TextBox>
               </td>

               <td>
                   <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
                   </td>
               <td>
                   <asp:TextBox ID="txtName" Width="540px" CssClass="form-control" runat="server" ></asp:TextBox>
               </td>
               <td>
                   <asp:Label ID="Label4" runat="server" Text="Telefone"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox2" Width="230px" CssClass="form-control" runat="server"></asp:TextBox>
               </td>
               
       </table>
       <br/>
       <table>
           <tr>
               <td>
                   <asp:Label ID="Label3" runat="server" Text="Endereço"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox1" Width="555px" CssClass="form-control" runat="server"></asp:TextBox>
               </td>
               

               <td>
                   <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox3" Width="440px" CssClass="form-control" runat="server"></asp:TextBox>
               </td>
           </tr>

           </tr>
           
           
       </table>
       <br/>
       <br/>
       
            <div class="text-center ">
               <asp:Button ID="Button1"  runat="server" CssClass="btn btn-default btn-primary" Text="Pesquisar" />       
            </div>
        
       <br />
       <br />

       <asp:Label ID="Label6" runat="server" Text="Ultimas Pesquisas"></asp:Label>

     
                <table class="table table-hover" id="tabelaHistorico" runat="server" visible="true">
                                <tr>
                                    <td>Cadastro</td>
                                    <td>Data</td>
                                    
                                   
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    
                                </tr>
                            </table>

        
     
                <table class="table table-hover" id="Table1" runat="server" visible="true">
                                <tr>
                                    <td>ID</td>
                                    <td>Nome</td>
                                    <td>Email</td>
                                    <td>CPF</td>
                                   
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    
                                </tr>
                            </table>
       
            </div>
            
       </div>
    <div class="row">
        <div class="col-lg-12">
            <asp:GridView ID="gdv" runat="server"></asp:GridView>
            <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>

