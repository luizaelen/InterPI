using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Car_Cargo
{

    private int _id_cargo;
    private string _car_cargo;

    public int Id_cargo
    {
        get { return _id_cargo; }
        set { _id_cargo = value; }
    }

    public string Car_cargo
    {
        get { return _car_cargo; }
        set { _car_cargo = value; }
    }

}