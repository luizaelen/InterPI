using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Pus_PerfilUsuarios
/// </summary>
public class Pus_PerfilUsuarios
{
    private Per_Perfil _id_perfil;
    private Usu_Usuarios _id_usuarios;

    public global:: Usu_Usuarios Id_usuarios
    {
        get { return _id_usuarios; }
        set { _id_usuarios = value; }
    }

    public global::Per_Perfil Id_perfil
    {
        get { return _id_perfil; }
        set { _id_perfil = value; }
    }
}