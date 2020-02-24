object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 224
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnSend: TButton
    Left = 136
    Top = 128
    Width = 145
    Height = 57
    Caption = 'Enviar Mensagem'
    TabOrder = 0
    OnClick = btnSendClick
  end
  object Edit1: TEdit
    Left = 32
    Top = 48
    Width = 361
    Height = 21
    TabOrder = 1
    Text = 'Ola Mundo!'
  end
end
