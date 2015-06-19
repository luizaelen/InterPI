using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Pen_Pessoasendereco
/// </summary>
public class Pen_Pessoasendereco
{
    private Pes_Pessoas _id_pessoas;
    private End_Endereco _id_endereco;

    public global::End_Endereco Id_endereco
    {
        get { return _id_endereco; }
        set { _id_endereco = value; }
    }

    public global::Pes_Pessoas Id_pessoas
    {
        get { return _id_pessoas; }
        set { _id_pessoas = value; }
    }
}