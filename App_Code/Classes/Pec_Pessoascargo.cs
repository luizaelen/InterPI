using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Pec_Pessoascargo
{
    private Pes_Pessoas _id_pessoas;
    private Car_Cargo _id_cargo;
    private DateTime _pec_dtinicio;
    private DateTime _pec_dtfim;

    public Car_Cargo Id_cargo
    {
        get { return _id_cargo; }
        set { _id_cargo = value; }
    }

    public Pes_Pessoas Id_pessoas
    {
        get { return _id_pessoas; }
        set { _id_pessoas = value; }
    }

    public DateTime Pec_dtinicio
    {
        get { return _pec_dtinicio; }
        set { _pec_dtinicio = value; }
    }
    

    public DateTime Pec_dtfim
    {
        get { return _pec_dtfim; }
        set { _pec_dtfim = value; }
    }

}