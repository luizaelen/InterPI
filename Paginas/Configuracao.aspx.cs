using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_Configuracao : System.Web.UI.Page
{
    private Style primaryStyle = new Style();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        primaryStyle.BackColor = Color.FromName(DropDownList1.SelectedItem.Value);
    }

    protected void ShowStatus(string mensagem)
    {
        Page.ClientScript.RegisterStartupScript(typeof(Page), "Informação", "alert('" + mensagem + "');", true);
        //Server.Transfer("AdminInicial.aspx", true);
    }
    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        ShowStatus("Pagina atualizada com sucesso.");

        TextBox4.Text = "";
        TextBox5.Text = "";
    }
    protected void btnAlterarSenha_Click(object sender, EventArgs e)
    {
        string senha = TextBox1.Text, senhaNova = TextBox2.Text, confirmaSenha = TextBox3.Text, email = "welington@gmail.com";

        //verifico se a senha esta vazio ou nao
        if (!String.IsNullOrEmpty(senha))
        {
            //se o campo nova senha e confirmar senha for igual eu altero
            if (senhaNova == confirmaSenha)
            {
                Usu_Usuarios_DB usuarioBD = new Usu_Usuarios_DB();

                //chamo o metodo passando a nova senha e  o email do usurio para trocar
                if (usuarioBD.mudaSenha(senhaNova, email))
                {
                    lblResultado.Text = "Senha alterada com sucesso!";
                }
                else
                {
                    lblResultado.Text = "Ocorreu um erro ao alterar senha!";
                }
            }
            else
            {
                lblResultado.Text = "As senhas estão diferentes, por favor digite novamente!";
            }
        }
        else
        {
            lblResultado.Text = "Todos os campos são obrigatórios!";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        
    }
}