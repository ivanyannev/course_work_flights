unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule2 = class(TDataModule)
    con1: TADOConnection;
    qryChek: TADOQuery;
    dsChek: TDataSource;
    qryReis: TADOQuery;
    dsReis: TDataSource;
    tblRoute: TADOTable;
    dsRoute: TDataSource;
    qryTicketype: TADOQuery;
    dsTicketType: TDataSource;
    tblTrain: TADOTable;
    dsTrain: TDataSource;
    qryPrice: TADOQuery;
    dsPrice: TDataSource;
    qryPers: TADOQuery;
    dsPers: TDataSource;
    qryRoute1: TADOQuery;
    dsRoute1: TDataSource;
    qryTicket1: TADOQuery;
    dsTicket1: TDataSource;
    qryChek1: TADOQuery;
    dsChek1: TDataSource;
    qryPers1: TADOQuery;
    dsPers1: TDataSource;
    qryTrain1: TADOQuery;
    dsTrain1: TDataSource;
    DataSourceCount: TDataSource;
    ADOQueryCount: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
