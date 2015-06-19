using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_AreaCliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        if(txbUserName.Text.Equals("isabel")&&txbSenha.Text.Equals("123456")){
            Response.Redirect("AdminInicial.aspx");
        }else{
            if((txbUserName.Text.Equals("matheus")&&txbSenha.Text.Equals("123456"))){
            Response.Redirect("UsuarioInicial.aspx");
            }else{
                Response.Write("<script>alert('Usuario ou senha invalidos!');</script>");
            }
            
        }
        
    }
    protected void btnEsqueci_Click(object sender, EventArgs e)
    {
        Response.Redirect("RecuperarSenha.aspx");
    }
}