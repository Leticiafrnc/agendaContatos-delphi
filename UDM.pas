unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    conexao: TFDConnection;
    tb_contato: TFDTable;
    ds_contatos: TDataSource;
    tb_contatoid: TFDAutoIncField;
    tb_contatonome: TStringField;
    tb_contatocelular: TStringField;
    tb_contatobloqueado: TBooleanField;
    tb_contatodata: TDateTimeField;
    tb_contatoobservacoes: TMemoField;
    procedure tb_contatoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.tb_contatoAfterInsert(DataSet: TDataSet);
begin
tb_contatoData.Value := Now();
end;

end.
