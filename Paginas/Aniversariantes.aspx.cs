using System;
using System.Collections.Generic;
using System.Data;
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
            
        }
        
    }

    /**
     * 
     * metodo qua popula o gridView manualmente retorna uma lista de dados
     **/
    protected DataTable PopulaGrid()
    {
        DataTable dt = new DataTable();

        //cria as colunas na tabela 
        dt.Columns.Add("Codigo", System.Type.GetType("System.String"));
        dt.Columns.Add("Nome", System.Type.GetType("System.String"));
        dt.Columns.Add("Data Nascimento", System.Type.GetType("System.String"));
        dt.Columns.Add("Mês", System.Type.GetType("System.String"));
        dt.Columns.Add("Status", System.Type.GetType("System.String"));


        //adiciono os valores na tabela, cada linha corresponde a um dado diferente de cada pessoa
        dt.Rows.Add(new String[] { Convert.ToString(1), "Maria Joana Silva", Convert.ToString(new DateTime(1985, 5, 21)), new DateTime(1985, 5, 21).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(2), "Bento XVI", Convert.ToString(new DateTime(2000, 12, 5)), new DateTime(2000, 12, 5).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(3), "João Alves", Convert.ToString(new DateTime(2001, 11, 8)), new DateTime(2001, 11, 8).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(4), "Carlos Eduardo", Convert.ToString(new DateTime(1999, 6, 15)), new DateTime(1999, 6, 15).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(5), "Rosana Alves", Convert.ToString(new DateTime(2004, 9, 23)), new DateTime(2004, 9, 23).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(6), "Chuck Norris", Convert.ToString(new DateTime(1987, 3, 16)), new DateTime(1987, 3, 16).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(7), "Sylvester Stalone", Convert.ToString(new DateTime(1998, 3, 18)), new DateTime(1998, 3, 18).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(8), "Miguel Miguelito", Convert.ToString(new DateTime(2006, 10, 18)), new DateTime(2006, 10, 18).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(9), "Jânio Quadros", Convert.ToString(new DateTime(1984, 9, 17)), new DateTime(1984, 9, 17).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(10), "Pedro Alvares Cabral", Convert.ToString(new DateTime(2007, 8, 11)), new DateTime(2007, 8, 11).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(11), "Pedro Bial", Convert.ToString(new DateTime(1995, 7, 9)), new DateTime(1995, 7, 9).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(12), "Luiza Elen b. Almeida", Convert.ToString(new DateTime(2005, 4, 20)), new DateTime(2005, 4, 20).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(13), "Jonas Rodrigues Alves", Convert.ToString(new DateTime(1999, 1, 18)), new DateTime(1999, 1, 18).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(14), "Jovial Nunes de Siqueira", Convert.ToString(new DateTime(2002, 8, 14)), new DateTime(2002, 8, 14).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(15), "José Da Silva Sauro ", Convert.ToString(new DateTime(2003, 2, 13)), new DateTime(2003, 2, 13).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(16), "Carlos Serafim", Convert.ToString(new DateTime(1996, 5, 19)), new DateTime(1996, 5, 19).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(17), "Bruce Lee", Convert.ToString(new DateTime(2008, 10, 2)), new DateTime(2008, 10, 2).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(18), "Indiana Jones", Convert.ToString(new DateTime(1986, 4, 11)), new DateTime(1986, 4, 11).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(19), "Jhon Lennon", Convert.ToString(new DateTime(1985, 6, 29)), new DateTime(1985, 6, 29).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });
        dt.Rows.Add(new String[] { Convert.ToString(20), "Michael Jackson", Convert.ToString(new DateTime(2001, 11, 5)), new DateTime(2001, 11, 5).Month.ToString(), Convert.ToString(rnd.Next(1, 5)) });

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

    protected void Button1_Click(object sender, EventArgs e)
    {
        ShowStatus("Preparando relatório, aguarde.");

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
        //senao seta todos os valores novamente.
        GridView2.DataSource = dv;
        GridView2.DataBind();

        query = "";
    }
}