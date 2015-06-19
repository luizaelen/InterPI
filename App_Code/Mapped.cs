using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
/// <summary>
/// Summary description for Mapped
/// </summary>
public class Mapped
{
	// abertura de conexão com o BD
    // definição e execução de comandos SQLs (embutidos)
        // --> Precedures
    // definição de parametros - evitar SQL injection e XSS
    // 0-1:N - container (DATASET) adapter

    //Abrir a conexão com o mysql
    public static  IDbConnection Connection(){
        MySqlConnection objConexao = new MySqlConnection(ConfigurationManager.AppSettings["StringConexao"]);
        objConexao.Open();
        return objConexao;
    }

    //valida e e chama a execucao do comando no BD
    public static IDbCommand Command(string sql, IDbConnection objConexao)
    {
        IDbCommand command = objConexao.CreateCommand();
        command.CommandText = sql;
        return command;
    }

    //definição de parametros e validação de dados de entrada na sql (? @)
    public static IDbDataParameter Parameter(string nomeParametro, object valor)
    {
        return new MySqlParameter(nomeParametro, valor);
    }

    // adapter - container de dados (N)
    public static IDbDataAdapter Adapter(IDbCommand comando)
    {
        IDbDataAdapter adapter = new MySqlDataAdapter();
        adapter.SelectCommand = comando;
        return adapter;
    }





} 