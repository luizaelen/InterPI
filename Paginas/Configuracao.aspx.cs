using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_Configuracao : System.Web.UI.Page
{
    private Style primaryStyle = new Style();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        primaryStyle.BackColor = Color.FromName(DropDownList1.SelectedItem.Value);
    }

    protected void ShowStatus(string mensagem)
    {
        Page.ClientScript.RegisterStartupScript(typeof(Page), "Informação", "alert('" + mensagem + "');", true);
        //Server.Transfer("AdminInicial.aspx", true);
    }
    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        ShowStatus("Pagina atualizada com sucesso.");

        TextBox4.Text = "";
        TextBox5.Text = "";
    }
    protected void btnAlterarSenha_Click(object sender, EventArgs e)
    {
        ShowStatus("Senha alterada com sucesso.");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void btnCancelar_Click(object sender, EventArgs e)
    {

    }
}