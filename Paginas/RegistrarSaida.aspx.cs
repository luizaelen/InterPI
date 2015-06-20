using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site_PI_Paginas_RegistrarSaida : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    
    protected void btnsaida_Click1(object sender, EventArgs e)
    {
        Mov_Movimento mov = new Mov_Movimento();
        Mot_Tipo mot = new Mot_Tipo();
        Moo_Origem moo = new Moo_Origem();
        Mod_Documento mod = new Mod_Documento();
        Pes_Pessoas pes = new Pes_Pessoas();
       // moo.Id_origem = ddlorigem.SelectedIndex;
        mot.Id_tipo = 2;
        mov.Id_tipo = mot;
        mov.Id_origem = moo;
        mod.Id_documento = 1;
        mov.Id_documento = mod;
        mov.Mov_data = Convert.ToDateTime(Request["DataRegistrarSaida"]);
        mov.Mov_valor = Convert.ToDouble(txbvalor.Text);
        mov.Mov_saldo = mov.Mov_saldo - mov.Mov_valor;
        mov.Mov_obs = txbfinalidade.Text;
        pes.Id_pessoas = 1;
        mov.Id_pessoas = pes;

        if (Mov_Movimento_DB.LancarSaida(mov))
        {
            ShowStatus("Movimentação de saida lancado com sucesso!");
            LimparCampos(this);
        }
        else 
        {
            ShowStatus("Movimentação de saida não lancado");
        }
    }

    //metodo para exibir mensagem ao clicar em um botao
    protected void ShowStatus(string mensagem)
    {
        Page.ClientScript.RegisterStartupScript(typeof(Page), "Informação", "alert('" + mensagem + "');", true);
        //Server.Transfer("Aniversariantes.aspx", true);
    }

    protected void LimparCampos(Control campos)
    {
        foreach(Control cadaCampo in campos.Controls)
        {
            if (cadaCampo is TextBox)
            {
                ((TextBox)cadaCampo).Text = String.Empty;

            }
            else if(cadaCampo.Controls.Count > 0)
            {
                LimparCampos(cadaCampo);
            }

        }
    }
}