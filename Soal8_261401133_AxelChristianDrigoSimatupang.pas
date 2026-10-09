program GajiKaryawan;
uses crt;

var
    Gol : char;
    Jam, Pokok, Lembur, Bonus, Total : longint;

begin
    clrscr;
    Write('Masukkan golongan (A/B/C): ');
    ReadLn(Gol);
    Gol := UpCase(Gol);
    Write('Masukkan total jam kerja per minggu: ');
    ReadLn(Jam);

    Pokok := 0;
    case Gol of
        'A': Pokok := 1500000;
        'B': Pokok := 2000000;
        'C': Pokok := 2500000;
    end;

    if Pokok = 0 then
        WriteLn('Golongan tidak valid!')
    else
    begin
        if Jam > 40 then
            Lembur := (Jam - 40) * 20000
        else
            Lembur := 0;

        if (Gol = 'C') and (Jam > 50) then
            Bonus := 100000
        else
            Bonus := 0;

        Total := Pokok + Lembur + Bonus;

        WriteLn;
        WriteLn('===== RINCIAN GAJI =====');
        WriteLn('Gaji Pokok       : Rp ', Pokok);
        WriteLn('Lembur           : Rp ', Lembur);
        WriteLn('Bonus            : Rp ', Bonus);
        WriteLn('------------------------');
        WriteLn('Total Gaji Akhir : Rp ', Total);
    end;
end.