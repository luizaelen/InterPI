using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_Movimentos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lbmovimentosf_Click(object sender, EventArgs e)
    {
        Mov_Movimento mov = new Mov_Movimento();
        Mot_Tipo mot = new Mot_Tipo();
        Moo_Origem moo = new Moo_Origem();
        Mod_Documento mod = new Mod_Documento();
        Pes_Pessoas pes = new Pes_Pessoas();
        moo.Id_origem = ddlorigem.SelectedIndex;
        mot.Id_tipo = ddltipo.SelectedIndex;
        mov.Id_tipo = mot;
        mov.Id_origem = moo;
        mod.Id_documento = rbldoc.SelectedIndex+1;
        mov.Id_documento = mod;
        mov.Mov_data = DateTime.Now; 
        mov.Mov_valor = Convert.ToDouble(txbvalorentrada.Text);
        mov.Mov_obs = txbobsentrada.Text;
        pes.Id_pessoas = 1;
        mov.Id_pessoas = pes;
        Mov_Movimento_DB.Insert(mov);

    }

    protected void lbmovextorno_Click(object sender, EventArgs e)
    {
        Mov_Movimento mov = new Mov_Movimento();
        mov.Mov_data = DateTime.Now; 
    }
    protected void lbmovsaidas_Click(object sender, EventArgs e)
    {

    }

    protected void ddltipo_SelectedIndexChanged(object sender, EventArgs e)
    {
        //mvmovimentosf.ActiveViewIndex = Convert.ToInt32(rbconsultas.SelectedValue);
        switch (ddltipo.SelectedIndex)
        {
  
            case 0:
                break;
            case 1:
                mvmovimentosf.ActiveViewIndex = 0;
                break;
            case 2:
                mvmovimentosf.ActiveViewIndex = 1;
                break;
            case 3:
                break;

        }

        if ((ddltipo.SelectedItem.Text == "Entrada") || (ddltipo.SelectedItem.Text == "Saída") || (ddltipo.SelectedItem.Text == "Extorno"))
        {
            lbmoventradas.Visible = true;
        }

        if(ddltipo.SelectedItem.Text == "Selecione")
        {
            lbmoventradas.Visible = false;
        }

        if ((ddltipo.SelectedItem.Text == "Entrada") || (ddltipo.SelectedItem.Text == "Saída") || (ddltipo.SelectedItem.Text == "Extorno"))
        {
            lbmovsaidas.Visible = true;
        }

        if (ddltipo.SelectedItem.Text == "Selecione")
        {
            lbmovsaidas.Visible = false;
        }

        if ((ddltipo.SelectedItem.Text == "Entrada") || (ddltipo.SelectedItem.Text == "Saída") || (ddltipo.SelectedItem.Text == "Extorno"))
        {
            lbmovextorno.Visible = true;
        }

        if (ddltipo.SelectedItem.Text == "Selecione")
        {
            lbmovextorno.Visible = false;
        }

    }

        protected void rbldoc_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbldoc.SelectedItem.Text == "Dinheiro")
            {
                lblconfirm.Visible = true;
                lbldoc.Visible = false;
                txbdoc.Visible = false;
            }

            if ((rbldoc.SelectedItem.Text == "Cheque") || (rbldoc.SelectedItem.Text == "Cartão Crédito") || (rbldoc.SelectedItem.Text == "Cartão Débito") || (rbldoc.SelectedItem.Text == "Transferência"))
            {
                lblconfirm.Visible = false;
                lbldoc.Visible = true;
                txbdoc.Visible = true;
            }
            
            /*if ((rbldoc.SelectedItem.Text != "Cheque") || (rbldoc.SelectedItem.Text != "Cartão Crédito") || (rbldoc.SelectedItem.Text != "Cartão Débito") || (rbldoc.SelectedItem.Text != "Transferência"))
            {
                lbldoc.Visible = false;
                txbdoc.Visible = false;
            }*/

            /*if (rbldoc.SelectedItem.Text != "Dinheiro")
            {
                lblconfirm.Visible = false;
            }*/
        }
        protected void rblpesfj_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*
            //MVPrincipal.ActiveViewIndex = Convert.ToInt32(rbMembros.SelectedValue);
            switch (rblpesfj.SelectedIndex)
            {
                case 0:
                    MVPrincipalCadastrar.ActiveViewIndex = 0;
                    break;
                case 1:
                    MVPrincipalCadastrar.ActiveViewIndex = 1;
                    break;
            }*/
        }

        protected void lbmoventradas_Click(object sender, EventArgs e)
        {
            Mov_Movimento mov = new Mov_Movimento();
            Mot_Tipo mot = new Mot_Tipo();
            Moo_Origem moo = new Moo_Origem();
            Mod_Documento mod = new Mod_Documento();
            Pes_Pessoas pes = new Pes_Pessoas();
            moo.Id_origem = ddlorigem.SelectedIndex;
            mot.Id_tipo = ddltipo.SelectedIndex;
            mov.Id_tipo = mot;
            mov.Id_origem = moo;
            mod.Id_documento = rbldoc.SelectedIndex + 1;
            mov.Id_documento = mod;
            mov.Mov_data = DateTime.Now;
            mov.Mov_valor = Convert.ToDouble(txbvalorentrada.Text);
            mov.Mov_obs = txbobsentrada.Text;
            pes.Id_pessoas = 1;
            mov.Id_pessoas = pes;
            Mov_Movimento_DB.Insert(mov);
        }
}