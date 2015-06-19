using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_AgendaAtividade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tabelaconsultastatus.Visible = false;
        tabelaconsultaperiodo.Visible = false;

    }
    protected void rbConsulta_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (rbConsulta.SelectedIndex)
        {
            case 0:
                mvConsultaagenda.ActiveViewIndex = 0;
                break;
            case 1:
                mvConsultaagenda.ActiveViewIndex = 1;
                break;
        }
    }

    protected void btnConsultaragenda_Click(object sender, EventArgs e)
    {
        tabelaconsultastatus.Visible = true;
    }
    protected void btnConsultarperiodo_Click(object sender, EventArgs e)
    {
        tabelaconsultaperiodo.Visible = true;
    }



}