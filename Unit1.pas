unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, Grids, DBGrids, StdCtrls, ComCtrls, DBCtrls,
  jpeg;

type
  TForm1 = class(TForm)
    dbgrd1: TDBGrid;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    dtp1: TDateTimePicker;
    btn1: TButton;
    lbl3: TLabel;
    lbl4: TLabel;
    dblkcbb1: TDBLookupComboBox;
    lbl5: TLabel;
    dblkcbb2: TDBLookupComboBox;
    lbl6: TLabel;
    lbl7: TLabel;
    dtp2: TDateTimePicker;
    dtp3: TDateTimePicker;
    lbl8: TLabel;
    edt1: TEdit;
    lbl9: TLabel;
    dblkcbb3: TDBLookupComboBox;
    N3: TMenuItem;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    cbb1: TComboBox;
    lbl11: TLabel;
    lbl10: TLabel;
    dbgrd2: TDBGrid;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  cheq_num, cheq_sum, price, pers_num, num, type2:string;
implementation

uses
  Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
 DataModule2.qryChek.Close;
 DataModule2.qryChek.SQL.Text:='select * from ��� order by [��� ����]';
 DataModule2.qryChek.Open;

 DataModule2.qryReis.Close;
 DataModule2.qryReis.SQL.Text:='SELECT �������.�����, �����.����, �����.[��� �����], �����.����, '+
 '�����.[��� �����������], �����.[��� ��������], �����.ϲ�, ˳���.[����], ���.[��� ����] '+
 'FROM ��� INNER JOIN (˳��� INNER JOIN (�������� INNER JOIN (������� INNER JOIN ����� ON �������.['+
 '��� ��������] = �����.[��� ��������]) ON ��������.[��� ����������] = �����.[��� ����������]) ON �'+
 '����.[��� �����] = �����.[��� �����]) ON ���.[��� ����] = �����.[��� ����];';
 DataModule2.qryReis.Open;

 DataModule2.qryTicketype.Close;
 DataModule2.qryTicketype.SQL.Text:='SELECT �����.[��� �����] FROM ����� GROUP BY �����.[��� �����];';
 DataModule2.qryTicketype.Open;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
 datamodule2.qryChek.Close;
 datamodule2.qryChek.SQL.Text:='INSERT INTO ���([����],[����]) values (0, :dt)';
 datamodule2.qryChek.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',dtp1.Date);
 datamodule2.qryChek.ExecSQL;

 FormShow(sender);

 datamodule2.qryChek.Last;
 cheq_num:=DataModule2.dsChek.dataset.fields[0].asstring;
 lbl1.Caption:='��� � '+ cheq_num;

 DataModule2.qryReis.Close;
 DataModule2.qryReis.SQL.Text:='SELECT �������.�����, �����.����, �����.[��� �����], �����.����, '+
 '�����.[��� �����������], �����.[��� ��������], �����.ϲ�, ˳���.[����], ���.[��� ����], �����.[��� �����] '+
 'FROM ��� INNER JOIN (˳��� INNER JOIN (�������� INNER JOIN (������� INNER JOIN ����� ON �������.['+
 '��� ��������] = �����.[��� ��������]) ON ��������.[��� ����������] = �����.[��� ����������]) ON �'+
 '����.[��� �����] = �����.[��� �����]) ON ���.[��� ����] = �����.[��� ����] WHERE (((���.[��� ����])='+cheq_num+')) ;';
 DataModule2.qryReis.Open;

 cheq_sum:='0';
 lbl3.caption:='���� �� ���y (���):'+cheq_sum;
 pnl2.enabled:=True;
end;

procedure TForm1.btn2Click(Sender: TObject);
 begin
 if  pers_num='' then ShowMessage('������ �����������') else
  begin
  DataModule2.ADOQueryCount.Close;
  DataModule2.ADOQueryCount.SQL.Text:='SELECT ˳���.[ʳ������ ����]'+
'FROM ˳��� WHERE (((˳���.[��� �����])=type1));';
DataModule2.ADOQueryCount.Parameters.ParamByName('type1').Value:=dblkcbb3.KeyValue;
  DataModule2.ADOQueryCount.open;
  type2:=DataModule2.DataSourceCount.DataSet.Fields[0].AsString;

  if  (StrToInt(cbb1.text)>StrToInt(type2)) or (StrToInt(cbb1.text)<1) then ShowMessage('������ ����� ���� � ����� ����������') else
  begin

 btn4.Enabled:=True;
 btn3.Enabled:=True;

  DataModule2.qryPrice.Close;
  DataModule2.qryPrice.SQL.Text:=' SELECT �������.[������ �������]'+
'FROM ������� INNER JOIN ����� ON �������.[��� ��������] = �����.[��� ��������]'+
'WHERE (((�������.[��� ��������])=numb));';
 DataModule2.qryPrice.Parameters.ParamByName('numb').Value:=dblkcbb1.KeyValue;
 DataModule2.qryPrice.open;

 price:=DataModule2.dsPrice.DataSet.Fields[0].AsString;
 if (dblkcbb3.Text='������') then price:=floatToStr(3*strtoint(price));
 if (dblkcbb2.Text='��������') then price:=floatToStr(2*strtoint(price));

 DataModule2.qryReis.Close;
 DataModule2.qryReis.SQL.Text:='insert INTO ����� (����, [��� �����]'+
 ', ����, [��� �����������], [��� ��������], ϲ�, [��� ��������], [��� �����]'+
 ', [��� ����������], [��� ����]) values (:mi, :tb, :pr, :chv, :chp, :pib, :km, :kp, :kpr, :kch);';
 DataModule2.qryReis.Parameters.ParamByName('mi').Value:=StrToInt(cbb1.text);
 DataModule2.qryReis.Parameters.ParamByName('tb').Value:=dblkcbb2.KeyValue;
 DataModule2.qryReis.Parameters.ParamByName('pr').Value:=StrTofloat(price);
 DataModule2.qryReis.Parameters.ParamByName('chv').Value:=FormatDateTime('dd.mm.yyyy',dtp2.Date);
 DataModule2.qryReis.Parameters.ParamByName('chp').Value:=FormatDateTime('dd.mm.yyyy',dtp3.Date);
 DataModule2.qryReis.Parameters.ParamByName('pib').Value:=edt1.text;
 DataModule2.qryReis.Parameters.ParamByName('km').Value:=dblkcbb1.KeyValue;
 DataModule2.qryReis.Parameters.ParamByName('kp').Value:=dblkcbb3.KeyValue;
 DataModule2.qryReis.Parameters.ParamByName('kpr').Value:=StrToInt(pers_num);
 DataModule2.qryReis.Parameters.ParamByName('kch').Value:=StrToInt(cheq_num);
 DataModule2.qryReis.ExecSQL;

 DataModule2.qryReis.Close;
 DataModule2.qryReis.SQL.Text:='SELECT �������.�����, �����.����, �����.[��� �����], '+
 '�����.����, �����.[��� �����������], �����.[��� ��������], �����.ϲ�, ˳���.[����],'+
 '���.[��� ����], �����.[��� �����] FROM ��� INNER JOIN (˳��� INNER JOIN (�������� INNER JOIN'+
 ' (������� INNER JOIN ����� ON �������.[��� ��������] = �����.[��� ��������]) ON '+
 '��������.[��� ����������] = �����.[��� ����������]) ON ˳���.[��� �����] = �����.'+
 '[��� �����]) ON ���.[��� ����] = �����.[��� ����] WHERE (((���.[��� ����])=cheq_num)); ';
 DataModule2.qryReis.Parameters.ParamByName('cheq_num').Value:=StrToInt(cheq_num);
 DataModule2.qryReis.Open;

 cheq_sum:=FloatToStr(StrToFloat(cheq_sum)+StrToFloat(price));
 lbl3.Caption:= '���� �� ���y (���):' + cheq_sum;

 DataModule2.qryChek.Close;
 DataModule2.qryChek.SQL.Text:='update ��� set [���].[����] = '+cheq_sum+' where ((���.[��� ����])='+cheq_num+')';
 DataModule2.qryChek.ExecSQL;

  DataModule2.qryChek.Close;
 DataModule2.qryChek.SQL.Text:='select * from ��� order by [��� ����]';
 DataModule2.qryChek.Open;
  end;
   end;
 end;



procedure TForm1.btn3Click(Sender: TObject);
begin
 cheq_sum:=FloatToStr(StrToFloat(cheq_sum)-StrToFloat(dbgrd2.Fields[1].asstring));
 lbl3.Caption:= '���� �� ���y (���):' + cheq_sum;

 num:=dbgrd2.Fields[9].asstring;

 DataModule2.qryReis.close;
 DataModule2.qryReis.sql.text:='delete * from [�����] where [��� �����]=num';
 DataModule2.qryReis.Parameters.ParamByName('num').Value:=StrToInt(num);
 DataModule2.qryReis.ExecSQL;

 DataModule2.qryReis.Close;
 DataModule2.qryReis.SQL.Text:='SELECT �������.�����, �����.����, �����.[��� �����], '+
 '�����.����, �����.[��� �����������], �����.[��� ��������], �����.ϲ�, ˳���.[����'+
 '], ���.[��� ����], �����.[��� �����] FROM ��� INNER JOIN (˳��� INNER JOIN (�������� INNER JOIN'+
 ' (������� INNER JOIN ����� ON �������.[��� ��������] = �����.[��� ��������]) ON '+
 '��������.[��� ����������] = �����.[��� ����������]) ON ˳���.[��� �����] = �����.'+
 '[��� �����]) ON ���.[��� ����] = �����.[��� ����] WHERE (((���.[��� ����])=cheq_num)); ';
 DataModule2.qryReis.Parameters.ParamByName('cheq_num').Value:=StrToInt(cheq_num);
 DataModule2.qryReis.Open;

 DataModule2.qryChek.Close;
 DataModule2.qryChek.SQL.Text:='update ��� set [���].[����] = '+cheq_sum+' where ((���.[��� ����])='+cheq_num+')';
 DataModule2.qryChek.ExecSQL;

 DataModule2.qryChek.Close;
 DataModule2.qryChek.SQL.Text:='select * from ��� order by [��� ����]';
 DataModule2.qryChek.Open;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
 Form3.QRLabel1.Caption:= '��� �'+cheq_num;
  Form3.QRLabel2.Caption:= '����:'+datetostr(dtp1.Date);
  Form3.QRLabel4.Caption:= '���� �� ����, ���:'+cheq_sum;
Form3.QuickRep1.PreviewModal;
end;

procedure TForm1.N3Click(Sender: TObject);
var pers_num_temp, name_temp:string;
begin
pers_num_temp:=InputBox('���� �����������', '������ ��� ����� ���������', '1');

DataModule2.qryPers.Close;
DataModule2.qryPers.SQL.Text:='SELECT ��������.[ϲ� ����������] FROM �������� WHERE (((��������.[��� ����������])= pers_num_temp));';
DataModule2.qryPers.Parameters.ParamByName('pers_num_temp').Value:=pers_num_temp;
DataModule2.qryPers.Open;

name_temp:=DataModule2.dsPers.DataSet.Fields[0].AsString;

if  name_temp='' then
   begin
  repeat
    ShowMessage('������ ����������� ����, ��������� �����');
 pers_num_temp:=InputBox('���� �����������', '������ ��� ����� ���������', '1');

DataModule2.qryPers.Close;
DataModule2.qryPers.SQL.Text:='SELECT ��������.[ϲ� ����������] FROM �������� WHERE (((��������.[��� ����������])= pers_num_temp));';
DataModule2.qryPers.Parameters.ParamByName('pers_num_temp').Value:=pers_num_temp;
DataModule2.qryPers.Open;

name_temp:=DataModule2.dsPers.DataSet.Fields[0].AsString;

  until (name_temp<>'')
    end;
if MessageDlg('������ ����������� �� '+name_temp, mtConfirmation, [mbYes, mbNo],0)= mryes then
begin
lbl10.Caption:='�������� ���������� - '+name_temp;
 pers_num:=pers_num_temp;
 end;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
ShowMessage('');
end;

procedure TForm1.N1Click(Sender: TObject);
begin
form4.show;
end;

end.
