using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Pes_Pessoas_DB
/// </summary>
public class Pes_Pessoas_DB
{
    //INSERT
    public static int Insert(Pes_Pessoas pessoas)
    {
        int retorno = 0;
        try
        {
            IDbConnection conexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO pes_pessoas(pes_nome,pes_statuspessoa,pes_telefone,pes_celular,pes_email,idpef_fisica,idpej_juridica) " +
            "VALUES (?pes_nome,?pes_statuspessoa,?pes_telefone,?pes_celular,?pes_email,?idpef_fisica,?idpej_juridica)";
             
            conexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, conexao);
            objCommand.Parameters.Add(Mapped.Parameter("?pes_nome", pessoas.Pes_nome));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_statuspessoa", pessoas.Pes_statuspessoa));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_telefone", pessoas.Pes_telefone));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_celular", pessoas.Pes_celular));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_email", pessoas.Pes_email));
            objCommand.Parameters.Add(Mapped.Parameter("?idpef_fisica", pessoas.Idpef_fisica.Idpef_fisica));
            objCommand.Parameters.Add(Mapped.Parameter("?idpej_juridica", pessoas.Idpej_juridica.Idpej_juridica));



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

    public static DataSet SelectAll()
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConnection = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM pes_pessoa pes inner join pef_fisica pef on pef.idpef_fisica = pes.idpef_fisica ORDER BY pes.pes_nome", objConnection);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConnection.Close();
        objCommand.Dispose();
        objConnection.Dispose();
        return ds;
    }

    public static DataSet SelectCpf(string cpf)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConnection = Mapped.Connection();                                                //arrumar no banco e colocar
        objCommand = Mapped.Command("SELECT * FROM pes_pessoa pes inner join pef_fisica pef on pef.idpef_fisica = pes.idpef_fisica where pef.pef_cpf like '%" + cpf + "%' ORDER BY pes.pes_nome", objConnection);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConnection.Close();
        objCommand.Dispose();
        objConnection.Dispose();
        return ds;
    }

    public static DataSet SelectStatus(string status)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConnection = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM pes_pessoa pes inner join pef_fisica pef on pef.idpef_fisica = pes.idpef_fisica where pes.pes_statuspessoa like '%" + status + "%' ORDER BY pes.pes_nome", objConnection);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConnection.Close();
        objCommand.Dispose();
        objConnection.Dispose();
        return ds;
    }
}