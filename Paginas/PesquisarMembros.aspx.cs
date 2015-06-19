using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_PesquisarMembros : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

   
    protected void rbConsulta_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (rbConsulta.SelectedIndex)
        {
            case 0:
                mvConsulta.ActiveViewIndex = 0;
                break;
            case 1:
                mvConsulta.ActiveViewIndex = 1;
                break;
        }
    }
    protected void btnConsultarPesFis_Click(object sender, EventArgs e)
    {
        tabelaPesFis.Visible = true;
    }
    protected void btnConsultaPesJur_Click(object sender, EventArgs e)
    {
        tabelaPesJur.Visible = true;
    }
}