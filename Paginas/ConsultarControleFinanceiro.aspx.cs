using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site_PI_Paginas_ConsultarControleFinanceiro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnconsultacontrfinan_Click(object sender, EventArgs e)
    {
        tabelaConsulta.Visible = true;
    }
    protected void rbconsultas_SelectedIndexChanged(object sender, EventArgs e)
    {
        //mvconsultar.ActiveViewIndex = Convert.ToInt32(rbconsultas.SelectedValue);
        switch (rbconsultas.SelectedIndex)
        {
            case 0:
                mvconsultar.ActiveViewIndex = 0;
                break;
            case 1:
                mvconsultar.ActiveViewIndex = 1;
                break;
        }
    }
}