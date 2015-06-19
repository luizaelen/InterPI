using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Mot_Tipo
{
    private int _id_tipo;
    private string _mot_tipo;

    public string Mot_tipo
    {
        get { return _mot_tipo; }
        set { _mot_tipo = value; }
    }

    public int Id_tipo
    {
        get { return _id_tipo; }
        set { _id_tipo = value; }
    }
}