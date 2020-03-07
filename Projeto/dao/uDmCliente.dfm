object dmCliente: TdmCliente
  OldCreateOrder = False
  Height = 264
  Width = 345
  object qryPesquisar: TZQuery
    Connection = dmConexao.Conexao
    SQL.Strings = (
      'Select id, nome, telefone from Cliente'
      'where upper(nome) like upper(:nome)')
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    Left = 48
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
  end
  object qryInserir: TZQuery
    Connection = dmConexao.Conexao
    SQL.Strings = (
      'insert into CLIENTE (NOME, TIPO, DOCUMENTO, TELEFONE)'
      'values (:NOME, :TIPO, :DOCUMENTO, :TELEFONE)')
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TELEFONE'
        ParamType = ptUnknown
      end>
    Left = 104
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TELEFONE'
        ParamType = ptUnknown
      end>
  end
  object qryAlterar: TZQuery
    Connection = dmConexao.Conexao
    SQL.Strings = (
      'update CLIENTE'
      'set NOME = :NOME,'
      '    TIPO = :TIPO,'
      '    DOCUMENTO = :DOCUMENTO,'
      '    TELEFONE = :TELEFONE'
      'where (ID = :ID)')
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TELEFONE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
      end>
    Left = 168
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TELEFONE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object qryExcluir: TZQuery
    Connection = dmConexao.Conexao
    SQL.Strings = (
      'delete from CLIENTE'
      'where (ID = :ID)')
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
      end>
    Left = 232
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object dspPesquisar: TDataSetProvider
    DataSet = qryPesquisar
    Left = 48
    Top = 88
  end
  object cdsPesquisar: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    ProviderName = 'dspPesquisar'
    Left = 48
    Top = 144
    object cdsPesquisarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPesquisarNOME: TWideStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsPesquisarTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
    end
  end
  object qryAuxiliar: TZQuery
    Connection = dmConexao.Conexao
    Params = <>
    Left = 144
    Top = 120
  end
end