unit uReceiver;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MinhaEstrutura;

type
  TForm1 = class(TForm)
    mmMessages: TMemo;
  private
    { Private declarations }
    procedure WMCopyData(var Msg: TWMCopyData); message WM_COPYDATA;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.WMCopyData(var Msg: TWMCopyData);
var
 xCMD: TMinhaEstrutura;
begin
  xCMD := TMinhaEstrutura(Msg.CopyDataStruct.lpData^);
  mmMessages.Lines.Add(xCMD.mensagem);
end;

end.
