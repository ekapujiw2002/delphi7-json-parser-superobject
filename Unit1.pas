unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, superobject, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  s1:string;

  json_root, itemx:ISuperObject;
  idx: Integer;
begin
s1:='{"name":"Henri Gourvest",/*thisisacomment*/"vip":true,"telephones":["000000000","111111111111"],"age":33,"size":1.83,"adresses":[{"adress":"blabla","city":"Metz","pc":57000},{"adress":"blabla","city":"Nantes","pc":44000}]}';
  json_root:=SO(s1);
  ShowMessage(json_root.S['name'] + ' ' + json_root.S['adresses']);

//  for itemx in json_root.S['addresses'] do
//  begin
//    ShowMessage(itemx.S['address']);
//  end;
//ShowMessage(IntToStr(json_root.A['adresses'].Length));
for idx := 0 to json_root.A['adresses'].Length-1 do
begin
  itemx:=json_root.A['adresses'].O[idx];
  ShowMessage(itemx.S['city']);
end;
end;

end.
