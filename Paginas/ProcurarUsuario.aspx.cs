using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Paginas_pesquisarUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) { 
            Usu_Usuarios(); 
        }
    }

    private void Usu_Usuarios()
    {
        throw new NotImplementedException();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = Pes_Pessoas_DB.SelectAll(); 
        int qtd = ds.Tables[0].Rows.Count; 
        if (qtd > 0) { 
            gdv.DataSource = ds.Tables[0].DefaultView; 
            gdv.DataBind(); 
            gdv.Visible = true; lbl.Text = "Foram encontrados " + qtd + " de registros"; 
        } else {
            gdv.Visible = false; 
            lbl.Text = "Não foram encontrado registros..."; 
        }
    }
}