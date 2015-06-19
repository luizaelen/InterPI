using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Atividades
/// </summary>
public class Age_Atividades
{
    private int _id_agenda;
    private string _age_tipo;
    private string _age_publico;
    private DateTime _age_dinicio;
    private DateTime _age_horario;
    private string _age_local;
    private string _age_descricao;
    private int _age_contado;
    private string _age_statusatividade;
    private DateTime _age_dfim;
    private Pes_Pessoas _id_pessoas;

    public global::Pes_Pessoas Id_pessoas
    {
        get { return _id_pessoas; }
        set { _id_pessoas = value; }
    }

    public DateTime Age_dfim
    {
        get { return _age_dfim; }
        set { _age_dfim = value; }
    }

    public string Age_statusatividade
    {
        get { return _age_statusatividade; }
        set { _age_statusatividade = value; }
    }

    public int Age_contado
    {
        get { return _age_contado; }
        set { _age_contado = value; }
    }

    public string Age_descricao
    {
        get { return _age_descricao; }
        set { _age_descricao = value; }
    }
    

    public string Age_local
    {
        get { return _age_local; }
        set { _age_local = value; }
    }

    public DateTime Age_horario
    {
        get { return _age_horario; }
        set { _age_horario = value; }
    }

    public DateTime Age_dinicio
    {
        get { return _age_dinicio; }
        set { _age_dinicio = value; }
    }


    public string Age_publico
    {
        get { return _age_publico; }
        set { _age_publico = value; }
    }

    public string Age_tipo
    {
        get { return _age_tipo; }
        set { _age_tipo = value; }
    }


    public int Id_agenda
    {
        get { return _id_agenda; }
        set { _id_agenda = value; }
    }
}