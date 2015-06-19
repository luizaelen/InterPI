using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BD_PessoaFisica
/// </summary>
public class BD_PessoaFisica
{
    public static List<Pes_Pessoas> listaAniversariantes()
    {

        List<Pes_Pessoas> pessoas = new List<Pes_Pessoas>();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataReader objDataReader;

        try
        {
            //ABRO conexao
            objConexao = Mapped.Connection();
            //monto uma consulta com inner join com 2 tabelas, pessoas e fisica
            string sql = "SELECT * FROM pes_pessoas p INNER JOIN pef_fisica  pf on p.fk_idpef_fisica_pef_fisica = pf.idpef_fisica;";
            objCommand = Mapped.Command(sql, objConexao);
            //executa o comando na ase de dados
            objDataReader = objCommand.ExecuteReader();

            //na lista de pessoas que vem da base, ele vai de uma em uma preenchendo o objeto de pessoa
            while (objDataReader.Read())
            {
                //crio um objeto de pessoa para carregar a lista de pessoas
                Pes_Pessoas pessoa = new Pes_Pessoas();
                Pef_Fisica pessoaFisica = new Pef_Fisica();

                //seta os valores da base de dados para o objeto de pessoa
                pessoa.Id_pessoas = Convert.ToInt32(objDataReader["id_pessoas"]);
                pessoa.Pes_nome = Convert.ToString(objDataReader["pes_nome"]);
                pessoa.Pes_statuspessoa = Convert.ToString(objDataReader["pes_statuspessoa"]);
                pessoa.Pes_nome = Convert.ToString(objDataReader["pes_nome"]);
                pessoaFisica.Pef_dtnasc = Convert.ToDateTime(objDataReader["pef_dtnasc"]);
                pessoa.Idpef_fisica = pessoaFisica;

                //adiciona depois de carregar uma pessoa, os dados na lista de pessoas,
                //ele faz isso para todos os resultados encontrados
                pessoas.Add(pessoa);
            }

            //fecho conexao com a base
            objConexao.Close();
            objConexao.Dispose();
            objCommand.Dispose();

            //retorna a lista de pessoas econtradas
            return pessoas;
        }
        catch (Exception e)
        {

            throw new Exception("Ocorreu um erro ao selecionar os dados de Pessoas." + e);
        }

    }
}