using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_CadastrarMembros : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void rbMembros_SelectedIndexChanged(object sender, EventArgs e)
    {
        //MVPrincipal.ActiveViewIndex = Convert.ToInt32(rbMembros.SelectedValue);
        switch (rbMembros.SelectedIndex)
        {
            case 0:
                MVPrincipalCadastrar.ActiveViewIndex = 0;
                break;
            case 1:
                MVPrincipalCadastrar.ActiveViewIndex = 1;
                break;
        }
    }
    protected void btnCadastrarPesFis_Click(object sender, EventArgs e)
    {
        Response.Write("<script> alert('Cadastrado!');</script>");
    }
    protected void btnCadastrarPesJur_Click(object sender, EventArgs e)
    {
        Response.Write("<script> alert('Cadastrado!');</script>");
    }
}