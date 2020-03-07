unit uClienteModel;

interface

uses System.SysUtils;

type
  TCliente = class
  private
    FID: Integer;
    FNome: string;
    FDocumento: string;
    FTipo: string;
    FTelefone: string;
    procedure SetNome(const Value: string);

  public
    property ID: Integer read FID write FID;
    property Nome: string read FNome write FNome;
    property Tipo: string read FTipo write FTipo;
    property Documento: string read FDocumento write FDocumento;
    property Telefone: string read FTelefone write FTelefone;
  end;

implementation



{ TCliente }

procedure TCliente.SetNome(const Value: string);
begin
  if Value = EmptyStr then
    raise Exception.Create('''Nome'' precisa ser preenchido.');
  FNome := Value;
end;

end.
