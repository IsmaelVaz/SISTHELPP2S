unit untAtendimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, StrUtils, Grids, classAtendimento,
  classListaAtendimento, Generics.Collections, xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TfrmAtendimento = class(TForm)
    pgControl: TPageControl;
    tabHorario: TTabSheet;
    tabBloco: TTabSheet;
    memoBlocoNotas: TMemo;
    sbtnSalvar: TSpeedButton;
    sbtnLimpar: TSpeedButton;
    fileSaveDialog: TFileSaveDialog;
    edtDataRef: TEdit;
    Label1: TLabel;
    edtHoraInicial: TEdit;
    edtHoraFinal: TEdit;
    sbtnAdicionarHora: TSpeedButton;
    sgridHorarios: TStringGrid;
    Label2: TLabel;
    Label3: TLabel;
    sbtnAbrirHorario: TSpeedButton;
    sbtnSalvarHorario: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label6: TLabel;
    memoDescricao: TMemo;
    xmlDoc: TXMLDocument;
    procedure sbtnLimparClick(Sender: TObject);
    procedure sbtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbtnAdicionarHoraClick(Sender: TObject);
    procedure AtualizarGrid;
    procedure edtHoraInicialKeyPress(Sender: TObject; var Key: Char);
    procedure edtHoraFinalKeyPress(Sender: TObject; var Key: Char);

    function ValidarHora(horaEnviada: String):boolean;
    procedure sbtnSalvarHorarioClick(Sender: TObject);
    procedure LimparCaixasTexto();
  private
    { Private declarations }

    tempListaAtendimento: TclassListaAtendimento;
  public
    { Public declarations }
  end;

var
  frmAtendimento: TfrmAtendimento;

implementation

{$R *.dfm}


procedure TfrmAtendimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Application.MessageBox('Deseja fechar o m�dulo e descartar as informa��es?','CUIDADO!',MB_YESNO +
                           MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
    Action:= cafree;
    Release;
    frmAtendimento:= nil;
end;

procedure TfrmAtendimento.FormCreate(Sender: TObject);
begin
  tempListaAtendimento:= TclassListaAtendimento.Create;
  edtDataRef.Text:= DateToStr(Date);

  with sgridHorarios do
  begin
    ColCount:= 4;
    RowCount:= 2;

    ColWidths[0]:= 100;
    ColWidths[1]:= 100;
    ColWidths[2]:= 100;
    ColWidths[3]:= 300;

    Cells[0,0]:= 'Data Referencia';
    Cells[1,0]:= 'Hora Inicial';
    Cells[2,0]:= 'Hora Final';
    Cells[3,0]:= 'Descri��o';
  end;
end;

procedure TfrmAtendimento.sbtnAdicionarHoraClick(Sender: TObject);
var
  tempAtendimento: TclassAtendimento;
  dataRefRec: TDate;
  horaInicialRec, horaFinalRec: TTime;
  descricaoRec: String;
begin

  if ValidarHora(edtHoraInicial.Text) then
  begin
    if ValidarHora(edtHoraFinal.Text) then
    begin

      horaInicialRec:= StrToTime(edtHoraInicial.Text);
      horaFinalRec:= StrToTime(edtHoraFinal.Text);

      if horaFinalRec > horaInicialRec then
      begin
        tempAtendimento:= TclassAtendimento.Create;

        dataRefRec:= StrToDate(edtDataRef.Text);
        descricaoRec:= memoDescricao.Text;

        with tempAtendimento do
        begin
            dataReferencia:= dataRefRec;
            horaInicial:= horaInicialRec;
            horaFinal:= horaFinalRec;
            descricao:= descricaoRec;
        end;

        tempListaAtendimento.Adicionar(tempAtendimento);
        AtualizarGrid;
        LimparCaixasTexto;
      end
      else
      begin
        ShowMessage('A Hora Final n�o pode ser maior que a Hora Inicial');
        edtHoraInicial.SetFocus;
      end;
    end
    else
    begin
      ShowMessage('Hora Final invalida');
      edtHoraFinal.SetFocus;
    end;
  end
  else
  begin
    ShowMessage('Hora Inicial inv�lida');
    edtHoraInicial.SetFocus;
  end;
end;

procedure TfrmAtendimento.AtualizarGrid;
var
  listaAtendimento: TObjectList<TclassAtendimento>;
  atendimento: TclassAtendimento;
  i: integer;
begin
  listaAtendimento:= tempListaAtendimento.RetornarLista;

  i:= 1;
  for atendimento in listaAtendimento do
  begin
    with sgridHorarios do
    begin
      RowCount:= listaAtendimento.Count + 1;

      Cells[0,i]:= datetostr(atendimento.dataReferencia);
      Cells[1,i]:= TimeToStr(atendimento.horaInicial);
      Cells[2,i]:= TimeToStr(atendimento.horaFinal);
      Cells[3,i]:= atendimento.descricao;
      i:= i + 1;
    end;
  end;

end;

function TfrmAtendimento.ValidarHora(horaEnviada: String):boolean;
var
  horas, minutos: integer;

begin
  try
    horas:= StrToInt(Copy(horaEnviada, 1, 2));
    minutos:= StrToInt(Copy(horaEnviada, 4, 5));

    if (horas <= 23) and (horas > 0) and (minutos <= 59) and (minutos >= 0) then
      result:= true
    else
      result:= false;
  except
    result:= false;
  end;

end;


// Marcaras de hora
procedure TfrmAtendimento.edtHoraFinalKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then abort
  else
  begin
    if not(Key = #8) then
    begin
      if Length(edtHoraFinal.Text) = 2 then
      begin
        edtHoraFinal.Text:= Concat(edtHoraFinal.Text, ':');
        edtHoraFinal.SelStart:= Length(edtHoraFinal.Text);
      end;
    end;
  end;
end;

procedure TfrmAtendimento.edtHoraInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then abort
  else
  begin
    if not(Key = #8) then
    begin
      if Length(edtHoraInicial.Text) = 2 then
      begin
        edtHoraInicial.Text:= Concat(edtHoraInicial.Text, ':');
        edtHoraInicial.SelStart:= Length(edtHoraInicial.Text);
      end;
    end;
  end;

end;


//SALVANDO ATENDIMENTO NO XML
procedure TfrmAtendimento.sbtnSalvarHorarioClick(Sender: TObject);
var
  ixmlAtendimento,Objeto: IXMLNode;
  listaAtendimento: TObjectList<TclassAtendimento>;
  tempAtendimento: TclassAtendimento;
  caminhoArquivo: String;
begin
  listaAtendimento:= tempListaAtendimento.RetornarLista;

  if listaAtendimento.Count > 0 then
  begin
    if fileSaveDialog.Execute then
    begin
      caminhoArquivo:= fileSaveDialog.FileName;
      if not ContainsText(caminhoArquivo, '.xml') then
        caminhoArquivo:= Concat(caminhoArquivo, '.xml');

      xmlDoc.Active:=true;
      xmlDoc.Version:= '1.0';
      xmlDoc.Encoding:= 'UTF-8';

      Objeto:= xmlDoc.AddChild('Objeto');

      for tempAtendimento in listaAtendimento do
      begin
         ixmlAtendimento:= Objeto.AddChild('Atendimento');
         ixmlAtendimento.Attributes['Oid']:= IntToStr(tempAtendimento.oid);

         ixmlAtendimento.AddChild('DataReferencia').Text := DateToStr(tempAtendimento.dataReferencia);
         ixmlAtendimento.AddChild('HoraInicial').Text := TimeToStr(tempAtendimento.horaInicial);
         ixmlAtendimento.AddChild('HoraFinal').Text := TimeToStr(tempAtendimento.horaFinal);
         ixmlAtendimento.AddChild('Descricao').Text := tempAtendimento.descricao;
         ixmlAtendimento.AddChild('QuemInseriu').Text := BoolToStr(tempAtendimento.quemInseriu);

      end;
      xmlDoc.SaveToFile(caminhoArquivo);
      xmlDoc.Active:=false;
      ShowMessage('Cadastros salvos');
    end;
  end
  else
    ShowMessage('N�o h� cadastros para Salvar');
end;

procedure TfrmAtendimento.LimparCaixasTexto();
begin
  edtHoraInicial.Clear;
  edtHoraFinal.Clear;
  memoDescricao.Lines.Clear;
  edtHoraInicial.SetFocus;
end;

//Parte da Aba Bloco de Notas
procedure TfrmAtendimento.sbtnLimparClick(Sender: TObject);
begin
  If Application.MessageBox('Deseja limpar o Bloco de Notas?','Aten��o!',MB_YESNO +
                           MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
    memoBlocoNotas.Clear;

end;

procedure TfrmAtendimento.sbtnSalvarClick(Sender: TObject);
var
  arq: TextFile;
  caminho: String;
  i: integer;
begin

  if fileSaveDialog.Execute then
  begin
    caminho:= fileSaveDialog.FileName;
    if not ContainsText(caminho, '.txt') then
       caminho:= Concat(caminho, '.txt');

    AssignFile(arq, caminho);
    Rewrite(arq);

    for i := 0 to memoBlocoNotas.Lines.Count do
      Writeln(arq, memoBlocoNotas.Lines[i]);

    CloseFile(arq);
  end;

end;

end.
