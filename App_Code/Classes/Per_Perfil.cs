using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Per_Perfil
/// </summary>
public class Per_Perfil
{
    private int _id_perfil;
    private string _per_descricao;

    public string Per_descricao
    {
        get { return _per_descricao; }
        set { _per_descricao = value; }
    }

    public int Id_perfil
    {
        get { return _id_perfil; }
        set { _id_perfil = value; }
    }
}