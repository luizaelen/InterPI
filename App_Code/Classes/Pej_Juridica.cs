using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Pej_Juridica
/// </summary>
public class Pej_Juridica
{
    private int _idpej_juridica;
    private string _pej_cnpj;
    private string _pej_razaos;

    public string Pej_razaos
    {
        get { return _pej_razaos; }
        set { _pej_razaos = value; }
    }

    public string Pej_cnpj
    {
        get { return _pej_cnpj; }
        set { _pej_cnpj = value; }
    }

    public int Idpej_juridica
    {
        get { return _idpej_juridica; }
        set { _idpej_juridica = value; }
    }
   

    
}