unit uSender;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MinhaEstrutura;

type
  TForm1 = class(TForm)
    btnSend: TButton;
    Edit1: TEdit;
    procedure btnSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSendClick(Sender: TObject);
var
 xHandle: HWND;
 xCMD: TMinhaEstrutura;
 xSendCMD: TCopyDataStruct;
begin
  xHandle := FindWindow(nil, 'Receiver');

  xCMD.status := 1; //carregamos o xCMD com todas as informações que precisamos
  xCMD.mensagem := 'teste';

  //Aqui vamos utilizar o TCopyDataStruct para copiar a estrutura do record e enviá-la para o outro processo
  xSendCMD.cbData := SizeOf(xCMD);
  xSendCMD.lpData := @xCMD;

  //Aqui enviamos de fato a mensagem (O SendMessage manda a mensagem de forma síncrona, já o PostMessage manda de forma assíncrona)
  SendMessage(xHandle, WM_COPYDATA, 0, Integer(@xSendCMD));

  ShowMessage('Mensagem enviada.');
end;

end.
