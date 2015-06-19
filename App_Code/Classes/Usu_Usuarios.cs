using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Usu_Usuarios
/// </summary>
public class Usu_Usuarios
{
    private int _id_usuarios;
    private string _usu_username;
    private string _usu_senha;
    private Pes_Pessoas _id_pessoas;

    public global::Pes_Pessoas Id_pessoas
    {
        get { return _id_pessoas; }
        set { _id_pessoas = value; }
    }

    public string Usu_senha
    {
        get { return _usu_senha; }
        set { _usu_senha = value; }
    }

    public string Usu_username
    {
        get { return _usu_username; }
        set { _usu_username = value; }
    }

    public int Id_usuarios
    {
        get { return _id_usuarios; }
        set { _id_usuarios = value; }
    }
}