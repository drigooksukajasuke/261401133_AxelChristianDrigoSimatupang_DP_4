program NamaHari;
uses crt;

var
    Hari : integer;

begin
    clrscr;
    Write('Masukkan Nomor Hari (1-7): ');
    ReadLn(Hari);

    case Hari of
        1: WriteLn('Hari ke-', hari, ' adalah Senin');
        2: WriteLn('Hari ke-', hari, ' adalah Selasa');
        3: WriteLn('Hari ke-', hari, ' adalah Rabu');
        4: WriteLn('Hari ke-', hari, ' adalah Kamis');
        5: WriteLn('Hari ke-', hari, ' adalah Jumat');
        6: WriteLn('Hari ke-', hari, ' adalah Sabtu');
        7: WriteLn('Hari ke-', hari, ' adalah Minggu');
    else
        WriteLn('Angka tidak valid!Harap Masukkan antara 1 hingga 7.');
    end;
end.