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

    protected void lbconsultacontrfinan_Click(object sender, EventArgs e)
    {
        
    }

    protected void rblconsultas_SelectedIndexChanged(object sender, EventArgs e)
    {
        //mvconsultar.ActiveViewIndex = Convert.ToInt32(rbconsultas.SelectedValue);
        switch (rblconsultas.SelectedIndex)
        {
            case 0:
                mvconsultar.ActiveViewIndex = 0;
                break;
            case 1:
                mvconsultar.ActiveViewIndex = 1;
                break;
        }

        if ((rblconsultas.SelectedItem.Text == " Consultar Entradas ") || (rblconsultas.SelectedItem.Text == " Consultar Saídas ") || (rblconsultas.SelectedItem.Text == " Relatório Geral "))
        {
            lbconsultacontrfinan.Visible = true;
        }

        /*if (rblconsultas.SelectedItem.Text == "Selecione")
        {
            lbconsultacontrfinan.Visible = false;
        }*/

    }
   
}