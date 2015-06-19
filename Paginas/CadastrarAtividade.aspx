<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="CadastrarAtividade.aspx.cs" Inherits="Paginas_CadastrarAtividade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

  <div id="ConteudoAdmin">
        <div class="text-center">
            <h3>Cadastrar Atividades</h3>
            <br />

            <div class="row">

                <div class="col-lg-2">
                    Tipo Evento:
                    
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

                </div>
                <div class="row">
                    <div class="col-lg-2">
                        <asp:Label ID="lbldescricao" runat="server" Text="Descrição:" required=""></asp:Label>
                    </div>
                    <div class="col-lg-3">
                        <asp:TextBox ID="txttipoevento" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Público Alvo:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo Obrigatório" Display="Dynamic" ForeColor="Red" ControlToValidate="txtpublico">*</asp:RequiredFieldValidator>
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txtpublico" runat="server" CssClass="form-control" ></asp:TextBox>
                </div>
                
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Data de inicio:
                </div>
                <div class="col-lg-3">
                    <asp:Calendar ID="calinicio" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </div>
                <div class="row">
                    <div class="col-lg-2">
                        Data Final:
                    </div>
                    <div class="col-lg-3">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </div>
                </div>

            </div>
            <br />

            <div class="row">
                <div class="col-lg-2">
                    Horário:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo Obrigatório" Display="Dynamic" ForeColor="Red" ControlToValidate="txtpublico">*</asp:RequiredFieldValidator>
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txthorario" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Local:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campo Obrigatório" Display="Dynamic" ForeColor="Red" ControlToValidate="txtpublico">*</asp:RequiredFieldValidator>
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txtlocal" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Descrição atividade:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo Obrigatório" Display="Dynamic" ForeColor="Red" ControlToValidate="txtpublico">*</asp:RequiredFieldValidator>
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txtdescricao" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Lider ou Organização Responsavel:<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Campo Obrigatório" Display="Dynamic" ForeColor="Red" ControlToValidate="txtpublico">*</asp:RequiredFieldValidator>
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txtresponsaveis" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Contato:<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Campo Obrigatório" Display="Dynamic" ForeColor="Red" ControlToValidate="txtpublico">*</asp:RequiredFieldValidator>
                </div>
                <div class="col-lg-3">
                    <asp:TextBox ID="txtcontato" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-2">
                    Status:
                </div>
                <div class="col-lg-3">
                    <asp:CheckBoxList ID="cblstatus" runat="server" CssClass="form-control" RepeatDirection="Horizontal">
                        <asp:ListItem>Ativado</asp:ListItem>
                        <asp:ListItem>Desativado</asp:ListItem>
                    </asp:CheckBoxList>
                </div>
            </div>
            <br />

            <br />
            <div class="row">
                <div class="col-lg-2">
                </div>
                <div class="col-lg-3">
                    <asp:Button ID="btncadastraratividade" runat="server" Text="Cadastrar" CssClass="btn btn-default btn-primary" OnClick="btncadastraratividade_Click" />
                </div>
                <div class="row">
                    <div class="col-lg-2">
                    </div>
                    <div class="col-lg-3">
                        <asp:Button ID="btncancelar" runat="server" Text="Cancelar" CssClass="btn btn-default btn-primary" OnClick="btncancelar_Click" />
                    </div>
                </div>

            </div>
            <br />


        </div>
    </div>




</asp:Content>

