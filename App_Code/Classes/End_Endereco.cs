using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for End_Endereco
/// </summary>
public class End_Endereco
{
    private int _id_endereco;
    private int _end_cep;
    private string _end_logradouro;
    private string _end_num;
    private string _end_bairro;
    private string _end_complemento;
    private string _end_referencia;
    private string _end_cidade;
    private string _end_estado;
    private string _end_pais;

    public string End_pais
    {
        get { return _end_pais; }
        set { _end_pais = value; }
    }

    public string End_estado
    {
        get { return _end_estado; }
        set { _end_estado = value; }
    }

    public string End_cidade
    {
        get { return _end_cidade; }
        set { _end_cidade = value; }
    }

    public string End_referencia
    {
        get { return _end_referencia; }
        set { _end_referencia = value; }
    }

    public string End_complemento
    {
        get { return _end_complemento; }
        set { _end_complemento = value; }
    }

    public string End_bairro
    {
        get { return _end_bairro; }
        set { _end_bairro = value; }
    }

    public string End_num
    {
        get { return _end_num; }
        set { _end_num = value; }
    }

    public string End_logradouro
    {
        get { return _end_logradouro; }
        set { _end_logradouro = value; }
    }

    public int End_cep
    {
        get { return _end_cep; }
        set { _end_cep = value; }
    }

    public int Id_endereco
    {
        get { return _id_endereco; }
        set { _id_endereco = value; }
    }
}