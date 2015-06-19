using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Instituicao
/// </summary>
public class Instituicao
{
    private int _id_instituicao;
    private string _ins_nome;
    private string _ins_razaos;
    private string _ins_cnpj;
    private int _ins_telefone;
    private string _ins_endereco;
    private int _ins_cep;
    private string _ins_cidade;
    private string _ins_estado;
    private string _ins_pais;
    private string _ins_email;

    public string Ins_email
    {
        get { return _ins_email; }
        set { _ins_email = value; }
    }

    public string Ins_pais
    {
        get { return _ins_pais; }
        set { _ins_pais = value; }
    }
    

    public string Ins_estado
    {
        get { return _ins_estado; }
        set { _ins_estado = value; }
    }
   

    public string Ins_cidade
    {
        get { return _ins_cidade; }
        set { _ins_cidade = value; }
    }



    public int Ins_cep
    {
        get { return _ins_cep; }
        set { _ins_cep = value; }
    }
   

    public string Ins_endereco
    {
        get { return _ins_endereco; }
        set { _ins_endereco = value; }
    }
    
    public int Ins_telefone
    {
        get { return _ins_telefone; }
        set { _ins_telefone = value; }
    }
    

    public string Ins_cnpj
    {
        get { return _ins_cnpj; }
        set { _ins_cnpj = value; }
    }
    

    public string Ins_razaos
    {
        get { return _ins_razaos; }
        set { _ins_razaos = value; }
    }
    

    public string Ins_nome
    {
        get { return _ins_nome; }
        set { _ins_nome = value; }
    }
   

    public int Id_instituicao
    {
        get { return _id_instituicao; }
        set { _id_instituicao = value; }
    }
   
    


}