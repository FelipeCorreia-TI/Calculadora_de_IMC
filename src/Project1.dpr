program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'IMC_Calculator';
  Application.CreateForm(TFormPai, FormPai);
  Application.Run;
end.
