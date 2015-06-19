using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BD_Usuario
/// </summary>
public class BD_Usuario
{
    public bool mudaSenha(String novaSenha, String email)
    {
        bool sucesso = false;
        try
        {
            
            IDbConnection objConnnexao;
            IDbCommand objCommand;
            //crio uma consulta buscando pelo usuario logado pelo email alterando a senha
            string sql = "UPDATE usu_usuarios SET usu_senha = ?senha WHERE usu_username = ?email";

            //recebendo a conexão e executando o cmd
            objConnnexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnnexao);

            //atribuindo os parametros da string sql
            objCommand.Parameters.Add(Mapped.Parameter("?senha", novaSenha));
            objCommand.Parameters.Add(Mapped.Parameter("?email", email));

            objCommand.ExecuteNonQuery();
            objConnnexao.Close();

            //abrindo novamente conexão
            objConnnexao.Dispose();
            objCommand.Dispose();

            sucesso = true;
        }//try
        catch (Exception e)
        {
            throw new Exception("Ocorreu um erro ao selecionar os dados do Usuário." + e);
        }

        return sucesso;

    }
}