using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Pef_Fisica_DB
/// </summary>
public class Pef_Fisica_DB
{
    //INSERT
    public static int Insert(Pef_Fisica fisica)
    {
        int retorno = 0;
        try
        {
            IDbConnection conexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO pef_fisica(pef_rg,pef_cpf,pef_sexo,pef_tiposanguineo,pef_dtnasc,pef_dtbatismo,pef_estadocivil) " +
            "VALUES (?pef_rg,?pef_cpf,?pef_sexo,?pef_tiposanguineo,?pef_dtnasc,?pef_dtbatismo,?pef_estadocivil)";
           
            conexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, conexao);
            objCommand.Parameters.Add(Mapped.Parameter("?pef_rg", fisica.Pef_rg));
            objCommand.Parameters.Add(Mapped.Parameter("?pef_cpf", fisica.Pef_cpf));
            objCommand.Parameters.Add(Mapped.Parameter("?pef_sexo", fisica.Pef_sexo));
            objCommand.Parameters.Add(Mapped.Parameter("?pef_tiposanguineo", fisica.Pef_tiposanguineo));
            objCommand.Parameters.Add(Mapped.Parameter("?pef_dtnasc", fisica.Pef_dtnasc));
            objCommand.Parameters.Add(Mapped.Parameter("?pef_dtbatismo", fisica.Pef_dtbatismo));
            objCommand.Parameters.Add(Mapped.Parameter("?pef_estadocivil", fisica.Pef_estadocivil));

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