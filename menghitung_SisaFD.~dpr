unit menghitung_SisaFD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ukuran: TEdit;
    terpakai: TEdit;
    GB: TLabel;
    MB: TLabel;
    hapus: TButton;
    Button1: TButton;
    hitung: TButton;
    hasil: TLabel;
    pesan: TLabel;
    procedure hitungClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure angkaDoang(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  kapasitasGB,terpakaiMB,sisa,sisaGB,sisaMB: integer;
  
implementation

{$R *.dfm}

procedure TForm1.hitungClick(Sender: TObject);
begin
  //periksa nilai ukuran
  if (ukuran.Text = '') or (ukuran.Text = '0') then
  begin
    ukuran.Text := '0'; //nilai ukuran menjadi 0
    terpakai.Text := '0'; //nilai terpakai menjadi 0
  end;

  //periksa nilai terpakai
  if terpakai.Text = '' then
  begin
    terpakai.Text := '0'; //nilai terpakai menjadi 0
  end;

  //baca nilai dari ukuran dan terpakai
  kapasitasGB := StrToInt(ukuran.Text);
  terpakaiMB := StrToInt(terpakai.Text);

  //proses perhitungan
  sisa := kapasitasGB * 1024 - terpakaiMB;
  sisaMB := sisa mod 1024;
  sisaGb := sisa div 1024;

  //output GB  MB ke hasil
  if sisa < 0 then
  begin
    hasil.Caption := 'HASIL ?';
    pesan.Caption := '* memori terpakai melebihi kapasitas ! *';
  end
  else
  begin
    hasil.Caption := 'Sisa Memory : '+IntToStr(sisaGB)+' GB   '+IntToStr(sisaMB)+' MB';
    pesan.Caption := '';
  end;
end;

procedure TForm1.hapusClick(Sender: TObject);
begin
  //mengosongkan nilai
  ukuran.Clear;
  terpakai.Clear;
  hasil.Caption := 'HASIL ?';
  pesan.Caption := '';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if application.MessageBox('Beneran Gan Mau Pergi...','Konfirmasi',MB_YesNo)=ID_yes then
  begin
    showmessage('yaudah deh -_- goodbye Gan ... ^_^'); close;
  end
  else
  begin
    showmessage('Ya silahkan diliat lagi gan ... ');
  end;
end;


procedure TForm1.angkaDoang(Sender: TObject; var key: Char);
begin
  //mencegah masukan berupa karakter
  if not (key in['0'..'9', #8, #13]) then // #8(backspace) #13(enter)
  begin
    key:= #0 ;
    ShowMessage('please !! cuma bisa nulis angka gan ... huruf belum support');
  end;
end;

end.
