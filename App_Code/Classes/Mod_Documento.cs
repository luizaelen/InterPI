using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Mod_Documento
{
    private int _id_documento;
    private string _mod_documento;

    public string Mod_documento
    {
        get { return _mod_documento; }
        set { _mod_documento = value; }
    }

    public int Id_documento
    {
        get { return _id_documento; }
        set { _id_documento = value; }
    }
    
}