program PenentuanNilaiAkhir;
uses crt;

var
    Tugas, UTS, UAS, Hadir, NilaiAkhir : real;
    Indeks : char;
    Status : string;

begin
    clrscr;
    Write('Masukkan Nilai Tugas  : ');
    ReadLn(Tugas);
    Write('Masukkan Nilai UTS    : ');
    ReadLn(UTS);
    Write('Masukkan Nilai UAS    : ');
    ReadLn(UAS);
    Write('Masukkan Kehadiran (%): ');
    ReadLn(Hadir);
    NilaiAkhir := (0.3 * Tugas) + (0.3 * UTS) + (0.4 * UAS);

    if (NilaiAkhir >= 60) and (Hadir >= 80) then
        Status := 'LULUS'
    else
        Status := 'TIDAK LULUS';
    if NilaiAkhir >= 85 then
        Indeks := 'A'
    else if NilaiAkhir >= 75 then
        Indeks := 'B'
    else if NilaiAkhir >= 60 then
        Indeks := 'C'
    else if NilaiAkhir >= 50 then
        Indeks := 'D'
    else
        Indeks := 'E';

    WriteLn;
    WriteLn('Nilai Akhir  : ', NilaiAkhir:0:2);
    WriteLn('Kehadiran    : ', Hadir:0:2, '%');   
    WriteLn('Indeks Huruf : ', Indeks);
    WriteLn('Status       : ', Status);
end.