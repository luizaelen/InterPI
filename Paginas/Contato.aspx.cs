using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_Contato : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
        protected void btnEnviar_Click(object sender, EventArgs e)
    {
        Response.Write("<script> alert('Sua Mensagem foi Enviada!');</script>");
        txtEmail.Text = "";
        txtNome.Text = "";
    }



        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            txtNome.Text = "";
            txtEmail.Text = "";
            txtTelefone.Text = "";
        }
}