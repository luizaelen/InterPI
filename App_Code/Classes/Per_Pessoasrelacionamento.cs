using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Per_Pessoasrelacionamento
{
    private Pes_Pessoas _id_pessoas;
    private Rel_Relacionamento _id_relacionamento;

    public global::Pes_Pessoas Id_pessoas 
    {
        get { return _id_pessoas; }
        set { _id_pessoas = value; }
    }

    public global::Rel_Relacionamento Id_relacionamento
    {
        get { return _id_relacionamento; }
        set { _id_relacionamento = value; }
    }

}