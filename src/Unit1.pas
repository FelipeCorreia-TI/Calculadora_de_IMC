unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormPai = class(TForm)
    Container: TPanel;
    EdtNome: TEdit;
    EdtAltura: TEdit;
    EdtPeso: TEdit;
    TextNome: TLabel;
    TextAltura: TLabel;
    TextPeso: TLabel;
    BtnCalcular: TButton;
    LblResultado: TLabel;
    TextResultado: TLabel;
    procedure BotaoClick(Sender: TObject);
    procedure BtnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPai: TFormPai;

implementation

{$R *.dfm}

procedure TFormPai.BotaoClick(Sender: TObject);

var
Nome : string ;

begin
  if (EdtNome.Text = '') then
  begin
    ShowMessage('É necessário conter nome!');
  end
  else if (EdtNome.Text <> '') then
  begin
    Nome:= EdtNome.Text ;
    ShowMessage('Bem Vindo! ' + Nome + ', como você está hoje?');
  end;
end;
procedure TFormPai.BtnCalcularClick(Sender: TObject);

var
  Nome, Texto,TextoResultado:string;
  Altura,Peso,CalculoAltura,CalculoIMC: Double;
begin
  Nome:= EdtNome.Text;
  Altura:= StrToFloat(EdtAltura.Text);
  Peso:= StrToFloat(EdtPeso.Text);

  CalculoAltura:= Altura * Altura;

  CalculoIMC:= Peso / CalculoAltura;

  Texto:='Seu IMC é ';


  if(CalculoIMC < 18.5) then
  begin
    TextoResultado:= 'Abaixo do peso';
  end
  else if(CalculoIMC >= 18.5) and (CalculoIMC <= 24.9) then
  begin
    TextoResultado:= 'Peso Normal';
  end
  else if(
end;

end.
