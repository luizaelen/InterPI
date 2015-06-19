using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Moo_Origem
{
    private int _id_origem;
    private string _moo_origem;

    public string Moo_origem
    {
        get { return _moo_origem; }
        set { _moo_origem = value; }
    }

    public int Id_origem
    {
        get { return _id_origem; }
        set { _id_origem = value; }
    }
}