using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Mov_Movimento
{
    private int _id_movimento;
    private DateTime _mov_data;
    private double _mov_valor;
    private string _mov_obs;
    private int _mov_num_doc;
    private double _mov_saldo;
    private Pes_Pessoas _id_pessoas;
    private Moo_Origem _id_origem;
    private Mot_Tipo _id_tipo;
    private Mod_Documento _id_documento;


    public double Mov_saldo
    {
        get { return _mov_saldo; }
        set { _mov_saldo = value; }
    }

    public int Mov_num_doc
    {
        get { return _mov_num_doc; }
        set { _mov_num_doc = value; }
    }

    public string Mov_obs
    {
        get { return _mov_obs; }
        set { _mov_obs = value; }
    }

    public double Mov_valor
    {
        get { return _mov_valor; }
        set { _mov_valor = value; }
    }

    public DateTime Mov_data
    {
        get { return _mov_data; }
        set { _mov_data = value; }
    }

    public int Id_movimento
    {
        get { return _id_movimento; }
        set { _id_movimento = value; }
    }

    public global::Mod_Documento Id_documento
    {
        get { return _id_documento; }
        set { _id_documento = value; }
    }

    public global::Mot_Tipo Id_tipo
    {
        get { return _id_tipo; }
        set { _id_tipo = value; }
    }

    public global::Moo_Origem Id_origem
    {
        get { return _id_origem; }
        set { _id_origem = value; }
    }

    public global::Pes_Pessoas Id_pessoas
    {
        get { return _id_pessoas; }
        set { _id_pessoas = value; }
    }
}