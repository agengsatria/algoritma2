program hitung_sisaFD;

uses
  Forms,
  menghitung_SisaFD in 'menghitung_SisaFD.dpr' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Menghitung Sisa Flashdisk';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
