unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, StdCtrls;

type
  TForm4 = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ts3: TTabSheet;
    ts4: TTabSheet;
    ts5: TTabSheet;
    dbgrd1: TDBGrid;
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    lbl4: TLabel;
    lbl5: TLabel;
    edt4: TEdit;
    edt5: TEdit;
    btn8: TButton;
    btn9: TButton;
    lbl6: TLabel;
    edt6: TEdit;
    dbgrd2: TDBGrid;
    dtp1: TDateTimePicker;
    lbl7: TLabel;
    dtp2: TDateTimePicker;
    lbl8: TLabel;
    cbb1: TComboBox;
    btn10: TButton;
    btn11: TButton;
    dbgrd3: TDBGrid;
    dtp3: TDateTimePicker;
    btn12: TButton;
    btn13: TButton;
    dbgrd4: TDBGrid;
    btn14: TButton;
    btn15: TButton;
    btn16: TButton;
    dbgrd5: TDBGrid;
    btn17: TButton;
    btn18: TButton;
    btn19: TButton;
    lbl9: TLabel;
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure edt4Change(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn14Click(Sender: TObject);
    procedure btn15Click(Sender: TObject);
    procedure btn16Click(Sender: TObject);
    procedure btn17Click(Sender: TObject);
    procedure btn18Click(Sender: TObject);
    procedure btn19Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Unit2, Unit1, Unit3, Unit5;

{$R *.dfm}

procedure TForm4.btn4Click(Sender: TObject);
begin
 Edt1.Text:=' ';
   Edt3.Text:='0';
   Edt2.Text:='0';
   edt6.Text:=' ';

   btn2.Visible:=False;
   btn1.Visible:=True;
   pnl1.Visible:=True;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
 Edt1.Text:=dbgrd1.Fields[1].AsString;
   Edt3.Text:=dbgrd1.Fields[3].AsString;
   Edt2.Text:=dbgrd1.Fields[2].AsString;
   edt6.Text:=dbgrd1.Fields[4].AsString;

   btn1.Visible:=False;
 
   btn2.Visible:=True;
   pnl1.Visible:=True;
end;

procedure TForm4.btn6Click(Sender: TObject);
var
  numer:string;
begin
     numer:=dbgrd1.Fields[0].AsString;

     DataModule2.qryRoute1.Close;
     DataModule2.qryRoute1.SQL.Text:='DELETE * FROM [Маршрут] WHERE [Маршрут].[Код маршрута]='+numer+'';
     DataModule2.qryRoute1.ExecSQL;

     DataModule2.qryRoute1.Close;
     DataModule2.qryRoute1.SQL.Text:='select * from [Маршрут]';
     DataModule2.qryRoute1.open;

pnl1.Visible:=False;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
     DataModule2.qryRoute1.Close;
     DataModule2.qryRoute1.SQL.Text:='insert into [Маршрут] (Назва,  Відстань, [Базова вартість], Опис) values ("'+edt1.text+'",'+edt2.text+','+edt3.text+', "'+edt4.text+'")';
     DataModule2.qryRoute1.ExecSQL;

     DataModule2.qryRoute1.Close;
     DataModule2.qryRoute1.SQL.Text:='select * from [Маршрут]';
     DataModule2.qryRoute1.open;

     pnl1.Visible:=False;
end;

procedure TForm4.btn2Click(Sender: TObject);
var
  numer:string;
begin
     numer:=dbgrd1.Fields[0].AsString;
     DataModule2.qryRoute1.Close;
     DataModule2.qryRoute1.SQL.Text:='update [Маршрут] set [Маршрут].Назва="'+edt1.text+'",  [Маршрут].Відстань='+edt2.text+', [Маршрут].[Базова вартість]='+edt3.text+', [Маршрут].Опис= "'+edt4.text+'" WHERE [Маршрут].[Код маршрута]='+numer+'';
     DataModule2.qryRoute1.ExecSQL;

     DataModule2.qryRoute1.Close;
     DataModule2.qryRoute1.SQL.Text:='select * from [Маршрут]';
     DataModule2.qryRoute1.open;

     pnl1.Visible:=False;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
 pnl1.Visible:=False;
end;

procedure TForm4.edt4Change(Sender: TObject);
begin
     DataModule2.qryRoute1.Close;
     DataModule2.qryRoute1.SQL.Text:='select * from [Маршрут] WHERE [Маршрут].Назва LIKE "%'+edt4.text+'%" ORDER BY [Маршрут].Назва';
     DataModule2.qryRoute1.open;
end;

procedure TForm4.btn9Click(Sender: TObject);
begin
     DataModule2.qryRoute1.Close;
     DataModule2.qryRoute1.SQL.Text:='select * from [Маршрут]';
     DataModule2.qryRoute1.open;
end;

procedure TForm4.btn8Click(Sender: TObject);
begin
     DataModule2.qryRoute1.Close;
     DataModule2.qryRoute1.SQL.Text:='select * from [Маршрут] WHERE [Маршрут].[Код маршрута] = '+edt5.text+' ORDER BY [Маршрут].[Код маршрута]';
     DataModule2.qryRoute1.open;
end;

procedure TForm4.btn7Click(Sender: TObject);
begin
form5.QuickRep1.PreviewModal;
end;

procedure TForm4.btn10Click(Sender: TObject);
begin
if cbb1.text='Пошук за' then ShowMessage('Оберіть вид пошуку') else
  begin
    if cbb1.text='Датою відправлення' then
    begin
     DataModule2.qryTicket1.Close;
     DataModule2.qryTicket1.SQL.Text:='select * from [Білет] WHERE [Білет].[Час відправлення] = :dt';
     DataModule2.qryTicket1.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',dtp2.date);
     DataModule2.qryTicket1.open;
    end;

    if cbb1.text='Датою прибуття' then
    begin
     DataModule2.qryTicket1.Close;
     DataModule2.qryTicket1.SQL.Text:='select * from [Білет] WHERE [Білет].[Час прибуття] = :dt';
     DataModule2.qryTicket1.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',dtp1.date);
     DataModule2.qryTicket1.open;
    end;

    if cbb1.text='Датою прибуття і датою відправлення' then
    begin
     DataModule2.qryTicket1.Close;
     DataModule2.qryTicket1.SQL.Text:='select * from [Білет] WHERE [Білет].[Час прибуття] = :dt and [Білет].[Час відправлення] = :dt1';
     DataModule2.qryTicket1.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',dtp1.date);
     DataModule2.qryTicket1.Parameters.ParamByName('dt1').Value:=FormatDateTime('dd.mm.yyyy',dtp2.date);
     DataModule2.qryTicket1.open;
    end;
  end;
  end;
procedure TForm4.btn11Click(Sender: TObject);
begin
     DataModule2.qryTicket1.Close;
     DataModule2.qryTicket1.SQL.Text:='select * from [Білет]';
     DataModule2.qryTicket1.open;
end;

procedure TForm4.btn13Click(Sender: TObject);
begin
     DataModule2.qryChek1.Close;
     DataModule2.qryChek1.SQL.Text:='select * from [Чек]';
     DataModule2.qryChek1.open;
end;

procedure TForm4.btn12Click(Sender: TObject);
begin
 DataModule2.qryChek1.Close;
     DataModule2.qryChek1.SQL.Text:='select * from [Чек] WHERE [Чек].[Дата] = :dt ';
     DataModule2.qryChek1.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',dtp3.date);
     DataModule2.qryChek1.open;
end;



procedure TForm4.btn14Click(Sender: TObject);
begin
  DataModule2.qryPers1.Insert;
end;

procedure TForm4.btn15Click(Sender: TObject);
begin
 if DataModule2.qryPers1.Modified then DataModule2.qryPers1.Post;
end;

procedure TForm4.btn16Click(Sender: TObject);
begin
DataModule2.qryPers1.Delete;
end;

procedure TForm4.btn17Click(Sender: TObject);
begin
DataModule2.qryTrain1.insert;
end;

procedure TForm4.btn18Click(Sender: TObject);
begin
  if DataModule2.qryTrain1.Modified then DataModule2.qryTrain1.Post;
end;

procedure TForm4.btn19Click(Sender: TObject);
begin
DataModule2.qryTrain1.Delete;
end;

end.
