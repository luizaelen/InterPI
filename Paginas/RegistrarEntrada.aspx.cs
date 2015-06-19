using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site_PI_Paginas_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnentrada_Click1(object sender, EventArgs e)
    {
        /*Response.Write("<script> alert('Registrado!');</script>");*/
    }


    protected void ddlformacontr_SelectedIndexChanged(object sender, EventArgs e)
    {
        //outros      
        if (ddlformacontr.SelectedItem.Text == "Outros")
        {
            txbformacontr.Visible = true;
            lbldescri.Visible = true;
        }

        if (ddlformacontr.SelectedItem.Text != "Outros")
        {
            txbformacontr.Visible = false;
            lbldescri.Visible = false;
        }
       
    }

    protected void ddltipo_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddltipo.SelectedItem.Text == "Outros")
        {
            txbtipo.Visible = true;
            lbldescr.Visible = true;
        }

        if (ddltipo.SelectedItem.Text != "Outros")
        {
            txbtipo.Visible = false;
            lbldescr.Visible = false;
        }
    }
}