program TarifParkir;
uses crt;

var 
    Kode : char;
    Jam : integer;
    Tarif : longint;
  
begin
    clrscr;
    Write('Masukkan kode kendaraan (M/K/B): ');
    ReadLn(Kode);
    Kode := UpCase(Kode);
    Write('Masukkan lama parkir (jam)      : ');
    ReadLn(Jam);

    if Jam < 1 then
    Jam := 1; 

    case Kode of
        'M': begin
                if Jam > 10 then
                    Tarif := 30000                  
                else
                    Tarif := 5000 + (Jam - 1) * 3000; 
                WriteLn('Total tarif parkir: Rp ', Tarif);
            end;
        'K': begin
                if Jam > 10 then
                    Tarif := 10000                    
                else
                    Tarif := 2000 + (Jam - 1) * 1000;
                WriteLn('Total tarif parkir: Rp ', Tarif);
            end;
        'B': begin
                if Jam > 10 then
                    Tarif := 50000                    
                else
                    Tarif := 10000 + (Jam - 1) * 5000;
                WriteLn('Total tarif parkir: Rp ', Tarif);
            end;
    else
        WriteLn('Kode kendaraan tidak valid!');
    end;
end.