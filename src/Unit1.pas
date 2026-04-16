unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ActnList, Menus, Mask;

type
  TFormPai = class(TForm)
    Container: TPanel;
    EdtNome: TEdit;
    TextNome: TLabel;
    TextAltura: TLabel;
    TextPeso: TLabel;
    BtnCalcular: TButton;
    MaskAltura: TMaskEdit;
    MaskPeso: TMaskEdit;
    procedure BotaoClick(Sender: TObject);
    procedure BtnCalcularClick(Sender: TObject);
    procedure EdtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtAlturaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPesoKeyPress(Sender: TObject; var Key: Char);
    procedure MaskAlturaEnter(Sender: TObject);
    procedure MaskPesoEnter(Sender: TObject);

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
  if(EdtNome.Text = '') or (MaskAltura.Text = '') or (MaskPeso.Text = '') then  //Valida campos nulos
  begin
    Application.MessageBox('todos os campos devem estar preenchidos!','Erro!',MB_OK + MB_ICONERROR);
  end
  else
  begin
    Nome:= EdtNome.Text;
    Altura:= StrToFloat(MaskAltura.Text);
    Peso:= StrToFloat(MaskPeso.Text);
    if (Peso <= 0.0) or (Altura <= 0.0) then //Precipita possível operação de divisão por 0
    begin
      Application.MessageBox('Não é possível realizar a operação, pois nem Peso, nem altura devem ser nulos (0)','Erro!',MB_OK + MB_ICONERROR)
    end
    else
    begin
      CalculoAltura:= Altura * Altura;
      CalculoIMC:= Peso / CalculoAltura;
    end;
    begin
    Texto:='Sua classificação IMC é ';
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
    begin
      Application.MessageBox(Pchar(sLineBreak +'Nome: ' + Nome + sLineBreak + Texto + TextoResultado),'Resultado',MB_OK);
    end;
   end;
end;
procedure TFormPai.EdtNomeKeyPress(Sender: TObject; var Key: Char);
begin
 if not(Key in ['A'..'Z','a'..'z',#8,#32]) then  //Limita apenas o campo a entradas str
 begin
  Key:= #0
 end;
end;

procedure TFormPai.EdtAlturaKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',',',#8]) then  //Limita apenas o campo a entradas numérica
  begin
    Key:= #0
  end;
end;

procedure TFormPai.EdtPesoKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',',',#8]) then  //Limita apenas o campo a entradas numérica
  begin
    Key:= #0
  end;
end;

procedure TFormPai.MaskAlturaEnter(Sender: TObject);
begin
  MaskAltura.SelStart:= 0;
  MaskAltura.SelLength:= 0;

end;

procedure TFormPai.MaskPesoEnter(Sender: TObject);
begin
  MaskPeso.SelStart:= 0;
  MaskPeso.SelLength:= 0;

end;

end.
