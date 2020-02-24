program Receiver;

uses
  Vcl.Forms,
  uReceiver in 'uReceiver.pas' {Form1},
  MinhaEstrutura in '..\Comum\MinhaEstrutura.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
