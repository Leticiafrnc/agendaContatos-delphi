object DM: TDM
  OldCreateOrder = False
  Height = 372
  Width = 456
  object conexao: TFDConnection
    Params.Strings = (
      'Database=agenda'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 48
  end
  object tb_contato: TFDTable
    Active = True
    AfterInsert = tb_contatoAfterInsert
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'agenda.contatos'
    Left = 136
    Top = 48
    object tb_contatoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tb_contatonome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object tb_contatocelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      Size = 16
    end
    object tb_contatobloqueado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'bloqueado'
      Origin = 'bloqueado'
    end
    object tb_contatodata: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
    end
    object tb_contatoobservacoes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observacoes'
      Origin = 'observacoes'
      BlobType = ftMemo
    end
  end
  object ds_contatos: TDataSource
    DataSet = tb_contato
    Left = 216
    Top = 48
  end
end
