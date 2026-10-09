program JumlahHari;
uses crt;

var
    Tahun, Bulan, Hari : integer;
    Kabisat : boolean;

begin
    clrscr;
    Write('Masukkan tahun: ');
    ReadLn(Tahun);
    Write('Masukkan nomor bulan (1-12): ');
    ReadLn(Bulan);

    Kabisat := (Tahun mod 400 = 0) or ((Tahun mod 4 = 0) and (Tahun mod 100 <> 0));

    Hari := 0;
    case Bulan of
        1, 3, 5, 7, 8, 10, 12: Hari := 31;
        4, 6, 9, 11: Hari := 30;
        2: if Kabisat then
                Hari := 29
            else
                Hari := 28;
    end;

    if Hari = 0 then
        WriteLn('Nomor bulan tidak valid!')
    else
    begin
        if Kabisat then
            WriteLn('Tahun ', Tahun, ' adalah tahun kabisat')
        else
            WriteLn('Tahun ', Tahun, ' bukan tahun kabisat');
        WriteLn('Jumlah hari pada bulan ke-', Bulan, ': ', Hari, ' hari');
    end;
end.