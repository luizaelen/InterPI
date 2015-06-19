using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Pes_Fisica
/// </summary>
public class Pef_Fisica
{
    private int _idpef_fisica;
    private string _pef_rg;
    private string _pef_cpf;
    private string _pef_sexo;
    private string _pef_tiposanguineo;
    private DateTime _pef_dtnasc;
    private DateTime _pef_dtbatismo;
    private string _pef_estadocivil;

    public string Pef_estadocivil
    {
        get { return _pef_estadocivil; }
        set { _pef_estadocivil = value; }
    }

    public DateTime Pef_dtbatismo
    {
        get { return _pef_dtbatismo; }
        set { _pef_dtbatismo = value; }
    }
    

    public DateTime Pef_dtnasc
    {
        get { return _pef_dtnasc; }
        set { _pef_dtnasc = value; }
    }

    public string Pef_tiposanguineo
    {
        get { return _pef_tiposanguineo; }
        set { _pef_tiposanguineo = value; }
    }

    public string Pef_sexo
    {
        get { return _pef_sexo; }
        set { _pef_sexo = value; }
    }

    public string Pef_cpf
    {
        get { return _pef_cpf; }
        set { _pef_cpf = value; }
    }

    public string Pef_rg
    {
        get { return _pef_rg; }
        set { _pef_rg = value; }
    }

    public int Idpef_fisica
    {
        get { return _idpef_fisica; }
        set { _idpef_fisica = value; }
    }
}