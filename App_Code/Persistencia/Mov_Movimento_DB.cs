using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Mov_Movimento_DB
/// </summary>
public class Mov_Movimento_DB
{
    //INSERT
    public static int Insert(Mov_Movimento movimento)
    {
        int retorno = 0;
        try
        {
            IDbConnection conexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO mov_movimento(mov_data, mov_valor, mov_obs, mov_num_doc, mov_saldo, id_pessoas, id_origem, id_tipo, id_documento) VALUES (?mov_data, ?mov_valor, ?mov_obs, ?mov_num_doc, ?mov_saldo, ?id_pessoas, ?id_origem, ?id_tipo, ?id_documento)";

            conexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, conexao);
            objCommand.Parameters.Add(Mapped.Parameter("?mov_data", movimento.Mov_data));
            objCommand.Parameters.Add(Mapped.Parameter("?mov_valor", movimento.Mov_valor));
            objCommand.Parameters.Add(Mapped.Parameter("?mov_obs", movimento.Mov_obs));
            objCommand.Parameters.Add(Mapped.Parameter("?mov_num_doc", movimento.Mov_num_doc));
            objCommand.Parameters.Add(Mapped.Parameter("?mov_saldo", movimento.Mov_saldo));
            objCommand.Parameters.Add(Mapped.Parameter("?id_pessoas", movimento.Id_pessoas.Id_pessoas));
            objCommand.Parameters.Add(Mapped.Parameter("?id_origem", movimento.Id_origem.Id_origem));
            objCommand.Parameters.Add(Mapped.Parameter("?id_tipo", movimento.Id_tipo.Id_tipo));
            objCommand.Parameters.Add(Mapped.Parameter("?id_documento", movimento.Id_documento.Id_documento));

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

    public static bool LancarSaida(Mov_Movimento movimento)
    {
        bool retorno = true;
        try
        {
            IDbConnection conexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO mov_movimento(mov_data, mov_valor, mov_obs, mov_num_doc, mov_saldo, fk_id_pessoas_pes_pessoas, fk_id_origem_moo_origem, fk_id_tipo_mot_tipo, fk_id_documento_mod_documento) VALUES (?mov_data, ?mov_valor, ?mov_obs, ?mov_num_doc, ?mov_saldo, ?id_pessoas, ?id_origem, ?id_tipo, ?id_documento)";

            conexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, conexao);
            objCommand.Parameters.Add(Mapped.Parameter("?mov_data", movimento.Mov_data));
            objCommand.Parameters.Add(Mapped.Parameter("?mov_valor", movimento.Mov_valor));
            objCommand.Parameters.Add(Mapped.Parameter("?mov_obs", movimento.Mov_obs));
            objCommand.Parameters.Add(Mapped.Parameter("?mov_num_doc", movimento.Mov_num_doc));
            objCommand.Parameters.Add(Mapped.Parameter("?mov_saldo", movimento.Mov_saldo));
            objCommand.Parameters.Add(Mapped.Parameter("?id_pessoas", 1));
            objCommand.Parameters.Add(Mapped.Parameter("?id_origem", 1));
            objCommand.Parameters.Add(Mapped.Parameter("?id_tipo", 1));
            objCommand.Parameters.Add(Mapped.Parameter("?id_documento",1));

            objCommand.ExecuteNonQuery();
            conexao.Close();
            objCommand.Dispose();
            conexao.Dispose();
        }
        catch (Exception e)
        {
            retorno = false;
        }
        return retorno;
    }

    protected void LimparCampos()
    {

    }
}