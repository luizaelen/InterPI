using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Pes_Pessoas
/// </summary>
public class Pes_Pessoas
{
    private int _id_pessoas;
    private string _pes_nome;
    private string _pes_statuspessoa;
    private int _pes_telefone;
    private int _pes_celular;
    private string _pes_email;
    private Pef_Fisica _idpef_fisica;
    private Pej_Juridica _idpej_juridica;

    public global:: Pej_Juridica Idpej_juridica
    {
        get { return _idpej_juridica; }
        set { _idpej_juridica = value; }
    }

    public global:: Pef_Fisica Idpef_fisica
    {
        get { return _idpef_fisica; }
        set { _idpef_fisica = value; }
    }

    public string Pes_email
    {
        get { return _pes_email; }
        set { _pes_email = value; }
    }

    public int Pes_celular
    {
        get { return _pes_celular; }
        set { _pes_celular = value; }
    }

    public int Pes_telefone
    {
        get { return _pes_telefone; }
        set { _pes_telefone = value; }
    }

    public string Pes_statuspessoa
    {
        get { return _pes_statuspessoa; }
        set { _pes_statuspessoa = value; }
    }

    public string Pes_nome
    {
        get { return _pes_nome; }
        set { _pes_nome = value; }
    }

    public int Id_pessoas
    {
        get { return _id_pessoas; }
        set { _id_pessoas = value; }
    }
}