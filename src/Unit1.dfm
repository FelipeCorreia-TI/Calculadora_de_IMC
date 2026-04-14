object FormPai: TFormPai
  Left = 1009
  Top = 218
  Align = alCustom
  AutoScroll = False
  Caption = 'IMC'
  ClientHeight = 310
  ClientWidth = 232
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Container: TPanel
    Left = -8
    Top = 0
    Width = 241
    Height = 313
    Color = clGray
    TabOrder = 0
    object TextNome: TLabel
      Left = 32
      Top = 24
      Width = 45
      Height = 15
      Caption = 'Nome:'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'MS UI Gothic'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object TextAltura: TLabel
      Left = 32
      Top = 72
      Width = 47
      Height = 15
      Caption = 'Altura:'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'MS UI Gothic'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object TextPeso: TLabel
      Left = 32
      Top = 120
      Width = 40
      Height = 15
      Caption = 'Peso:'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'MS UI Gothic'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object LblResultado: TLabel
      Left = 16
      Top = 232
      Width = 209
      Height = 65
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Color = clWindow
      ParentColor = False
      Layout = tlCenter
    end
    object TextResultado: TLabel
      Left = 16
      Top = 216
      Width = 209
      Height = 15
      Alignment = taCenter
      Caption = 'Resultado'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS UI Gothic'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object EdtNome: TEdit
      Left = 32
      Top = 40
      Width = 177
      Height = 21
      Cursor = crIBeam
      TabOrder = 0
    end
    object EdtAltura: TEdit
      Left = 32
      Top = 88
      Width = 177
      Height = 21
      Cursor = crIBeam
      TabOrder = 1
    end
    object EdtPeso: TEdit
      Left = 32
      Top = 136
      Width = 177
      Height = 21
      Cursor = crIBeam
      TabOrder = 2
    end
    object BtnCalcular: TButton
      Left = 32
      Top = 168
      Width = 177
      Height = 25
      Caption = 'Calcular'
      TabOrder = 3
      OnClick = BtnCalcularClick
    end
  end
end
