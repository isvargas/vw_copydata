program Sender;

uses
  Vcl.Forms,
  uSender in 'uSender.pas' {Form1},
  MinhaEstrutura in '..\Comum\MinhaEstrutura.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
