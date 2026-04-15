unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ActnList, Menus;

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

end;

procedure TFormPai.BtnCalcularClick(Sender: TObject);

var
  Nome, Texto,TextoResultado:string;
  Altura,Peso,CalculoAltura,CalculoIMC: Double;
begin
  Texto:='Sua classificação IMC é ';
  if(EdtNome.Text = '') or (EdtAltura.Text = '') or (EdtPeso.Text = '') then
  begin
    ShowMessage('todos os campos devem estar preenchidos!');
  end
  else
  begin
    Nome:= EdtNome.Text;
    Altura:= StrToFloat(EdtAltura.Text);
    Peso:= StrToFloat(EdtPeso.Text);

    if (Peso = 0) or (Altura = 0) then
    begin
      ShowMessage('Não é possível realizar a operação, pois nem Peso, nem altura devem ser nulos (0)')
    end
    else
    begin
      CalculoAltura:= Altura * Altura;
      CalculoIMC:= Peso / CalculoAltura;
    end;
    if(CalculoIMC < 18.5) then
    begin
      TextoResultado:= 'Magreza';
    end
    else if(CalculoIMC >= 18.5) and (CalculoIMC <= 24.9) then
    begin
      TextoResultado:= 'Normal';
    end
    else if(CalculoIMC >= 25.0) and (CalculoIMC <= 29.9) then
      begin
      TextoResultado:='Sobrepeso';
    end
    else if(CalculoIMC >= 30.0) and (CalculoIMC <= 39.9) then
    begin
      TextoResultado:='Obesidade';
    end
    else if(CalculoIMC > 40.0) then
    begin
      TextoResultado:='Obesidade Grave';
    end;
    ShowMessage('Resultado: ' + sLineBreak +'Nome: '+ Nome +sLineBreak+ Texto + TextoResultado);
  end;
end;
end.
