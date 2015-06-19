using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Age_Atividades_DB
/// </summary>
public class Age_Atividades_DB
{
    //INSERT
    public static int Insert(Age_Atividades atividades)
    {
        int retorno = 0;
        try
        {
            IDbConnection conexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO age_atividades(age_tipo, age_publico, age_dtinicio, age_horario, age_local, age_descricao, age_contato, age_statusatividade, age_dtfim, id_pessoas) " +
            "VALUES (?age_tipo,?age_publico, ?age_dtinicio, ?age_horario, ?age_local, ?age_descricao, ?age_contato, ?age_statusatividade, ?age_dtfim, ?id_pessoas)";

            conexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, conexao);
            objCommand.Parameters.Add(Mapped.Parameter("?age_tipo", atividades.Age_tipo));
            objCommand.Parameters.Add(Mapped.Parameter("?age_publico", atividades.Age_publico));
            objCommand.Parameters.Add(Mapped.Parameter("?age_dtinicio", atividades.Age_dinicio));
            objCommand.Parameters.Add(Mapped.Parameter("?age_horario", atividades.Age_horario));
            objCommand.Parameters.Add(Mapped.Parameter("?age_local", atividades.Age_local));
            objCommand.Parameters.Add(Mapped.Parameter("?age_descricao", atividades.Age_descricao));
            objCommand.Parameters.Add(Mapped.Parameter("?age_contato", atividades.Age_contado));
            objCommand.Parameters.Add(Mapped.Parameter("?age_statusatividade", atividades.Age_statusatividade));
            objCommand.Parameters.Add(Mapped.Parameter("?age_dtfim", atividades.Age_dfim));
            objCommand.Parameters.Add(Mapped.Parameter("?id_pessoas", atividades.Id_pessoas.Id_pessoas));

            objCommand.ExecuteNonQuery();
            conexao.Close();
            objCommand.Dispose();
            conexao.Dispose();
        }
        catch (Exception e)
        {
            retorno = -2;
        }
        return retorno;
    }
}