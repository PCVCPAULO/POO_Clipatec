unit uDmConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, ZAbstractConnection,
  ZConnection;

type
  TdmConexao = class(TDataModule)
    Conexao: TZConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmConexao.DataModuleCreate(Sender: TObject);
begin
  if not Conexao.Connected then
  begin
    Conexao.Connect;
  end;
end;

end.
