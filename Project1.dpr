program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  superdate in 'superdate.pas',
  superobject in 'superobject.pas',
  supertypes in 'supertypes.pas',
  superxmlparser in 'superxmlparser.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
