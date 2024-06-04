program Inicial;

uses
  Vcl.Forms,
  ProjetoInicial in 'ProjetoInicial.pas' {TelaInicial},
  Tela2 in 'Tela2.pas' {frm_tela2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTelaInicial, TelaInicial);
  Application.Run;
end.
