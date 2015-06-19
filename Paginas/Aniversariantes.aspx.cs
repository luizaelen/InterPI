using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginas_Aniversariantes : System.Web.UI.Page
{

    Random rnd = new Random();

    /**
     * Ao carregar a pagina, é feita uma chamada para o metodo Carrega GridView;
     * para carregar os dados na tabela.
     **/
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            CarregaGV();//chamada do metodo
            GridView2.PageIndex = 0;

        }

    }

    /**
     * 
     * metodo qua popula o gridView manualmente retorna uma lista de dados
     **/
    protected DataTable PopulaGrid()
    {
        DataTable dt = new DataTable();
        DataRow dr;
        List<Pes_Pessoas> listaPessoas = new List<Pes_Pessoas>();

        //ao buscar do  banco de dados carrega os valores em uma lista
        listaPessoas = BD_PessoaFisica.listaAniversariantes(); 

        //cria as colunas na tabela 
        dt.Columns.Add("Codigo", System.Type.GetType("System.String"));
        dt.Columns.Add("Nome", System.Type.GetType("System.String"));
        dt.Columns.Add("Data Nascimento", System.Type.GetType("System.String"));
        dt.Columns.Add("Mês", System.Type.GetType("System.String"));
        dt.Columns.Add("Status", System.Type.GetType("System.String"));

        if (listaPessoas != null)
        {
            //adiciono os valores na tabela, cada linha corresponde a um dado diferente de cada pessoa
            foreach (Pes_Pessoas cadaPessoa in listaPessoas)
            {
                dt.DefaultView.Sort = "Nome";
                dr = dt.NewRow();

                dr["Codigo"] = cadaPessoa.Id_pessoas;
                dr["Nome"] = cadaPessoa.Pes_nome;
                dr["Data Nascimento"] = cadaPessoa.Idpef_fisica.Pef_dtnasc;
                dr["Mês"] = cadaPessoa.Idpef_fisica.Pef_dtnasc.Month.ToString();
                dr["Status"] = cadaPessoa.Pes_statuspessoa;

                dt.Rows.Add(dr);
            }
        }

        //retorna a lista de dados 
        return dt;
    }

    protected void CarregaGV()
    {
        //seta no Grid os valores retornados do metodo PopulaGrid().
        GridView2.DataSource = PopulaGrid();
        GridView2.DataBind();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */

    }

    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        CarregaGV();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        


    }

    //metodo para exibir mensagem ao clicar em um botao
    protected void ShowStatus(string mensagem)
    {
        Page.ClientScript.RegisterStartupScript(typeof(Page), "Informação", "alert('" + mensagem + "');", true);
        //Server.Transfer("Aniversariantes.aspx", true);
    }

    /**
     * Metodo que faz o filtro pelos campos passando, repopulando o gridView com os valores.
     * **/


    protected void btnConsultar_Click(object sender, EventArgs e)
    {

    }
    protected void btnConsultar_Click1(object sender, EventArgs e)
    {
        DataView dv = new DataView(PopulaGrid());
        string query = "";

        if (DropDownList1.SelectedIndex != 0)
        {
            //pega a opcao selecionada no DropDownList e crio a busca pelo campo "Status = Ativo" por exemplo
            query = "Status = " + DropDownList1.SelectedIndex.ToString();
        }

        if (DropDownList2.SelectedIndex != 0)
        {
            if (!String.IsNullOrEmpty(query))
            {
                //pega a opcao selecionada no DropDownList e crio a busca pelo campo "Mês = Janeiro" por exemplo
                query += " AND Mês = " + DropDownList2.SelectedIndex.ToString();
            }
            else
            {
                //pega a opcao selecionada no DropDownList e crio a busca pelo campo "Mês = Janeiro" por exemplo
                query = "Mês = " + DropDownList2.SelectedIndex.ToString();
            }
        }

        if (!String.IsNullOrEmpty(query))
        {
            //se foi selecionado algum valor no dropdownlist repopulo o gridview
            dv.RowFilter = query; // query example = "id = 10"
        }
        if (dv.Count < 2)
        {
            lblTotalResultado.Text = "Foi econtrado " + Convert.ToString(dv.Count) + " resultado.";
        }
        else
        {
            lblTotalResultado.Text = "Foram econtrados " + Convert.ToString(dv.Count) + " resultados.";
        }
        //senao seta todos os valores novamente.
        GridView2.DataSource = dv;
        GridView2.DataBind();

        query = "";
    }
    protected void btnImprimir_Click(object sender, EventArgs e)
    {
        //ShowStatus("Preparando relatório, aguarde.");
        Response.Clear();
        StringWriter sw = new StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);

        GridView2.RenderControl(htw);
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment; filename=Aniversariantes.pdf");
        Response.Write(sw.ToString());
        Response.End();
    }
}