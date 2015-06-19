using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_EditarAtividade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txttipoevento.Visible = false;
        lbldescricao.Visible = false;
       
    }
    protected void btnConsultaPesJur_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dpdtipoevento.SelectedItem.Text == "Outros")
        {
            txttipoevento.Visible = true;
            lbldescricao.Visible = true;

        }
        if (dpdtipoevento.SelectedItem.Text != "Outros")
        {
            txttipoevento.Visible = false;
            lbldescricao.Visible = false;
        }
    }
    protected void btnconsultaratividade_Click(object sender, EventArgs e)
    {
        tabelaconsultaratividade.Visible = true;
    }
}

