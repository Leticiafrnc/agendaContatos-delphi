object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Agenda de Contatos'
  ClientHeight = 449
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 224
    Height = 29
    Caption = 'Agenda de Contatos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 111
    Width = 98
    Height = 18
    Caption = 'Nome do Contato'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 157
    Width = 40
    Height = 18
    Caption = 'Celular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 253
    Width = 69
    Height = 18
    Caption = 'Observa'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 392
    Width = 136
    Height = 18
    Caption = 'Data e Hora do Cadastro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 24
    Top = 411
    Width = 235
    Height = 17
    DataField = 'data'
    DataSource = DM.ds_contatos
  end
  object Label6: TLabel
    Left = 424
    Top = 84
    Width = 102
    Height = 18
    Caption = 'Busca de Contatos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 130
    Width = 273
    Height = 21
    DataField = 'nome'
    DataSource = DM.ds_contatos
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 176
    Width = 185
    Height = 21
    DataField = 'celular'
    DataSource = DM.ds_contatos
    TabOrder = 1
  end
  object DBCheckBox1: TDBCheckBox
    Left = 24
    Top = 216
    Width = 97
    Height = 17
    Caption = 'Bloqueado'
    DataField = 'bloqueado'
    DataSource = DM.ds_contatos
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 24
    Top = 272
    Width = 345
    Height = 89
    DataField = 'observacoes'
    DataSource = DM.ds_contatos
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 66
    Width = 340
    Height = 32
    DataSource = DM.ds_contatos
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 424
    Top = 130
    Width = 273
    Height = 275
    DataSource = DM.ds_contatos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Contatos cadastrados'
        Visible = True
      end>
  end
  object txt_busca: TEdit
    Left = 424
    Top = 103
    Width = 265
    Height = 21
    TabOrder = 6
    OnChange = txt_buscaChange
  end
end
