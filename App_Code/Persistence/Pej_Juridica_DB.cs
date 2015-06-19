using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Pej_Juridica_DB
/// </summary>
public class Pej_Juridica_DB
{
    //INSERT
    public static int Insert(Pej_Juridica juridica)
    {
        int retorno = 0;
        try
        {
            IDbConnection conexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO pej_juridica(pej_cnpj,pej_razaos) " +
            "VALUES (?pej_cnpj,?pej_razaos)";
            
            conexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, conexao);
            objCommand.Parameters.Add(Mapped.Parameter("?pej_cnpj", juridica.Pej_cnpj));
            objCommand.Parameters.Add(Mapped.Parameter("?pej_razaos", juridica.Pej_razaos));
           

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