unit MinhaEstrutura;

interface

type
  TMinhaEstrutura = packed record
    //aqui pode-se usar várias variáveis para passar mais de uma informação de uma única vez
    status: integer;
    mensagem: string[255];
  end;

implementation

end.
