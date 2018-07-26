unit untPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, StdCtrls, ButtonGroup, Buttons, Grids,
  ComCtrls, TabNotBk, dblookup;

type
  TForm1 = class(TForm)
    pnMenu: TPanel;
    pnAtendimento: TPanel;
    pnManutencao: TPanel;
    pnInstalacao: TPanel;
    pnTreinamento: TPanel;
    pnTemplate: TPanel;
    pnIniciante: TPanel;
    Panel1: TPanel;
    pnMouAten: TPanel;
    pnMouIni: TPanel;
    pnMouInst: TPanel;
    pnMouTreina: TPanel;
    pnMouTemp: TPanel;
    pnMouManu: TPanel;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure AjustarAlinhamento();
    procedure pnAtendimentoMouseEnter(Sender: TObject);
    procedure pnAtendimentoMouseLeave(Sender: TObject);
    procedure pnInicianteMouseEnter(Sender: TObject);
    procedure pnInicianteMouseLeave(Sender: TObject);
    procedure pnInstalacaoMouseEnter(Sender: TObject);
    procedure pnInstalacaoMouseLeave(Sender: TObject);
    procedure pnManutencaoMouseEnter(Sender: TObject);
    procedure pnManutencaoMouseLeave(Sender: TObject);
    procedure pnTemplateMouseEnter(Sender: TObject);
    procedure pnTemplateMouseLeave(Sender: TObject);
    procedure pnTreinamentoMouseEnter(Sender: TObject);
    procedure pnTreinamentoMouseLeave(Sender: TObject);
    procedure pnManutencaoClick(Sender: TObject);
  private
    { Private declarations }
    tamanhoBloco, metadeBloco: integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);

begin
  AjustarAlinhamento;
end;

procedure TForm1.FormResize(Sender: TObject);

begin
  AjustarAlinhamento;
end;

procedure TForm1.pnAtendimentoMouseEnter(Sender: TObject);
begin
  pnMouAten.Visible:= true;
end;

procedure TForm1.pnAtendimentoMouseLeave(Sender: TObject);
begin
  pnMouAten.Visible:= false;
end;

procedure TForm1.pnInicianteMouseEnter(Sender: TObject);
begin
  pnMouIni.Visible:=true;
end;

procedure TForm1.pnInicianteMouseLeave(Sender: TObject);
begin
  pnMouIni.Visible:=false;
end;

procedure TForm1.pnInstalacaoMouseEnter(Sender: TObject);
begin
  pnMouInst.Visible:=true;
end;

procedure TForm1.pnInstalacaoMouseLeave(Sender: TObject);
begin
  pnMouInst.Visible:=false;
end;

procedure TForm1.pnManutencaoClick(Sender: TObject);
begin
  pnMouManu.Visible:= true;
end;

procedure TForm1.pnManutencaoMouseEnter(Sender: TObject);
begin
  pnMouManu.Visible:=true;
end;

procedure TForm1.pnManutencaoMouseLeave(Sender: TObject);
begin
    pnMouManu.Visible:=false;
end;

procedure TForm1.pnTemplateMouseEnter(Sender: TObject);
begin
  pnMouTemp.Visible:=true;
end;

procedure TForm1.pnTemplateMouseLeave(Sender: TObject);
begin
  pnMouTemp.Visible:=false;
end;

procedure TForm1.pnTreinamentoMouseEnter(Sender: TObject);
begin
  pnMouTreina.Visible:=true;
end;

procedure TForm1.pnTreinamentoMouseLeave(Sender: TObject);
begin
  pnMouTreina.Visible:=false;
end;

procedure TForm1.AjustarAlinhamento();
var
  numBlocos, tamanhoBloco, metadeBloco, tamanhoDisp: integer;
begin
  tamanhoBloco:=0;
  metadeBloco:=0;
  tamanhoDisp:=0;
  numBlocos:= 0;

  if pnAtendimento.Visible then
    numBlocos:= numBlocos + 1;
    tamanhoDisp:= tamanhoDisp + pnAtendimento.Width + 10;
  if pnManutencao.Visible then
    numBlocos:= numBlocos + 1;
    tamanhoDisp:= tamanhoDisp + pnManutencao.Width + 10;
  if pnInstalacao.Visible then
    numBlocos:= numBlocos + 1;
    tamanhoDisp:= tamanhoDisp + pnInstalacao.Width + 10;
  if pnTreinamento.Visible then
    numBlocos:= numBlocos + 1;
    tamanhoDisp:= tamanhoDisp + pnTreinamento.Width + 10;
  if pnTemplate.Visible then
    numBlocos:= numBlocos + 1;
    tamanhoDisp:= tamanhoDisp + pnTemplate.Width + 10;
  if pnIniciante.Visible then
    numBlocos:= numBlocos + 1;
    tamanhoDisp:= tamanhoDisp + pnIniciante.Width + 10;

  tamanhoBloco:= tamanhoDisp div numBlocos;
  metadeBloco:= tamanhoBloco div 2;

  pnMenu.Width:= tamanhoDisp;
  pnMenu.Left:= (Form1.Width div 2) - (pnMenu.Width div 2);

  pnAtendimento.Left:= metadeBloco - (pnAtendimento.Width div 2);
  pnManutencao.Left:= (tamanhoBloco * 1) + metadeBloco  - (pnManutencao.Width div 2);
  pnInstalacao.Left:= (tamanhoBloco * 2) + metadeBloco  - (pnInstalacao.Width div 2);
  pnTreinamento.Left:= (tamanhoBloco * 3) + metadeBloco - (pnTreinamento.Width div 2);
  pnTemplate.Left:= (tamanhoBloco * 4) + metadeBloco - (pnTemplate.Width div 2);
  pnIniciante.Left:= (tamanhoBloco * 5) + metadeBloco  - (pnIniciante.Width div 2);
end;

end.
