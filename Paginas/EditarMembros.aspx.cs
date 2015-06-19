using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_EditarMembros : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void rbConsultaEditar_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (rbConsultaEditar.SelectedIndex)
        {
            case 0:
                mvConsultaEditar.ActiveViewIndex = 0;
                break;
            case 1:
                mvConsultaEditar.ActiveViewIndex = 1;
                break;
        }
    }

    
    protected void btnConsultaEditarPesJur_Click(object sender, EventArgs e)
    {
        tabelaEditarPesJur.Visible = true;
    }
    protected void btnConsultarEditarPesFis_Click(object sender, EventArgs e)
    {
        tabelaEditarPesFis.Visible = true;
    }

    protected void btnEditarPesFis_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditarMembrosFisicos.aspx");
    }

    protected void btnEditarPesJur_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditarMembrosJuridicos.aspx");
    }
}