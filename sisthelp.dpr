program sisthelp;

uses
  Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untAtendimento in 'CRUD\untAtendimento.pas' {frmAtendimento},
  untInstalacao in 'CRUD\untInstalacao.pas' {frmInstalacao},
  untNotificacao in 'CRUD\untNotificacao.pas' {frmNotificacao},
  classAtendimento in 'CLASS\classAtendimento.pas',
  classListaAtendimento in 'CLASS\classListaAtendimento.pas',
  untThreadExpXML in 'THREAD\untThreadExpXML.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
