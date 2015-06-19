using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for End_Endereco_DB
/// </summary>
public class End_Endereco_DB
{
    //INSERT
    public static int Insert(End_Endereco endereco)
    {
        int retorno = 0;
        try
        {
            IDbConnection conexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO end_endereco(end_cep,end_logradouro,end_num,end_bairro,end_complemento,end_referencia,end_cidade,end_estado,end_pais) " +
            "VALUES (?end_cep,?end_logradouro,?end_num,?end_bairro,?end_complemento,?end_referencia,?end_cidade,?end_estado,?end_pais)";
              
            conexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, conexao);
            objCommand.Parameters.Add(Mapped.Parameter("?end_cep", endereco.End_cep));
            objCommand.Parameters.Add(Mapped.Parameter("?end_logradouro", endereco.End_logradouro));
            objCommand.Parameters.Add(Mapped.Parameter("?end_num", endereco.End_num));
            objCommand.Parameters.Add(Mapped.Parameter("?end_bairro", endereco.End_bairro));
            objCommand.Parameters.Add(Mapped.Parameter("?end_complemento", endereco.End_complemento));
            objCommand.Parameters.Add(Mapped.Parameter("?end_referencia", endereco.End_referencia));
            objCommand.Parameters.Add(Mapped.Parameter("?end_cidade", endereco.End_cidade));
            objCommand.Parameters.Add(Mapped.Parameter("?end_estado", endereco.End_estado));
            objCommand.Parameters.Add(Mapped.Parameter("?end_pais", endereco.End_pais));

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