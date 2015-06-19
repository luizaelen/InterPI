using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site_PI_Paginas_EditarValores : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    
    protected void btneditarvalores_Click(object sender, EventArgs e)
    {
        tabelaeditarvalores.Visible = true;
    }
    
    protected void lbeditarvalores_Click1(object sender, EventArgs e)
    {
        Response.Redirect("EditarValoresPag.aspx");
    }
    protected void rbleditarvalores_SelectedIndexChanged1(object sender, EventArgs e)
    {
        switch (rbleditarvalores.SelectedIndex)
        {
            case 0:
                mveditarvalores.ActiveViewIndex = 0;
                break;
            case 1:
                mveditarvalores.ActiveViewIndex = 1;
                break;
        }
    }
    protected void lbtabelaconsultar_Click(object sender, EventArgs e)
    {
        mvtabelaeditar.ActiveViewIndex = 0;
    }
}