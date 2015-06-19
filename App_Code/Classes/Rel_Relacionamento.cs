using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Rel_Relacionamento
{
    private int _id_relacionamento;
    private string _rel_tipo;

    public int Id_relacionamento
    {
        get { return _id_relacionamento; }
        set { _id_relacionamento = value; }
    }

    public string Rel_tipo
    {
        get { return _rel_tipo; }
        set { _rel_tipo = value; }
    }
}