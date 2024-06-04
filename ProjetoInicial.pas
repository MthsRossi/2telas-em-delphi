unit ProjetoInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TTelaInicial = class(TForm)
    Lb_Cad_usuarios: TLabel;
    BtnSalvar: TButton;
    SpeedButton1: TSpeedButton;
    BtnDeletar: TButton;
    BtnEditar: TButton;
    txt_Nome: TEdit;
    Lb_Nome: TLabel;
    txt_Nome2: TEdit;
    txt_Nome3: TEdit;
    lb_valor: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btn_calcular: TButton;
    Label3: TLabel;
    txt_vlr_1: TEdit;
    txt_vlr_2: TEdit;
    txt_total: TEdit;
    btn_tela2: TButton;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_calcularClick(Sender: TObject);
    procedure btn_tela2Click(Sender: TObject);
  private
    { Private declarations }
  public
   var nome, sobrenome, endereco:string;
   var valor:integer;
    { Public declarations }
  end;

var
  TelaInicial: TTelaInicial;

implementation

{$R *.dfm}

uses Tela2;

procedure TTelaInicial.BtnDeletarClick(Sender: TObject);
begin
  txt_Nome.Text := '';
  txt_Nome2.Text := '';
  txt_Nome3.Text := '';
  lb_valor.Caption := '';
  txt_vlr_1.Text := '';
  txt_vlr_2.Text := '';
  txt_total.Text := '';
end;

procedure TTelaInicial.BtnEditarClick(Sender: TObject);
begin
  nome := 'Jonatan';
  sobrenome := 'Alves';
  endereco := 'Rua das Acácias';
  lb_valor.Caption := 'Meu nome é: ' + nome + ' ' + sobrenome + ' e meu endereço é ' + endereco;
end;

procedure TTelaInicial.BtnSalvarClick(Sender: TObject);



begin
  nome := 'Jonatan';
  sobrenome := 'Alves';
  endereco := 'Rua das Acácias';
  txt_Nome.Text := nome;
  txt_Nome2.Text := sobrenome;
  txt_Nome3.Text := endereco;
end;

procedure TTelaInicial.btn_calcularClick(Sender: TObject);

  var vlr1, vlr2, total, media : Double;
  var cont:integer;
begin

  vlr1 := StrToFloat (txt_vlr_1.Text);
  vlr2 := StrToFloat(txt_vlr_2.Text);
  total := vlr1 + vlr2;
  txt_total.Text := floattostr(total);

  // operador de condição if

  media := 60;
  if (total >= media) or (total >= 50) Then
  begin
  ShowMessage ('O aluno obteve ' + floattostr(total) +' pontos e está aprovado');
  end
  else
  begin
    ShowMessage ('O aluno obteve '+ floattostr(total) +' pontos e está reprovado');
  end;

  // LOOP DE REPETIÇÃO FOR

  { for cont := 1 to 5 do
  begin
    showMessage (inttostr(cont));
    if (cont <=0) then
    begin
    showmessage ('O contador chegou a 0');
    end;
  end; }

  // LOOP DE REPETIÇÃO WHILE
  cont := 1;
  while (cont <= 4) do
  begin
  showMessage (inttostr(cont));
  cont := cont + 1;
  //inc (cont);
  end;

end;

procedure TTelaInicial.btn_tela2Click(Sender: TObject);
begin
  frm_tela2 := Tfrm_tela2.Create(Self);
  frm_tela2.Showmodal;
end;

procedure TTelaInicial.SpeedButton1Click(Sender: TObject);
begin
  valor := 10;
  lb_valor.Caption := IntToStr(valor);
end;

end.
