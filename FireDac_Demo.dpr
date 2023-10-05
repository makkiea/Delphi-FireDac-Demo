program FireDac_Demo;

uses
  Vcl.Forms,
  FD_Demo in 'FD_Demo.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
