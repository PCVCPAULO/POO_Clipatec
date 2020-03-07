object dmConexao: TdmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 171
  Width = 182
  object Conexao: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Connected = True
    HostName = ''
    Port = 0
    Database = 'D:\MarceloBorges\Delphi\POO_Clipatec\Dados\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    LibraryLocation = 'D:\MarceloBorges\Delphi\POO_Clipatec\Dados\fbembed.dll'
    Left = 56
    Top = 32
  end
end
