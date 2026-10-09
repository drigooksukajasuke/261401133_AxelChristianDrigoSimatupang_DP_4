program jual;
uses crt;

var
    N, i: integer;
    harga, total, diskon, totalBayar: real;
begin
    clrscr;
    Total := 0;
    diskon := 0;
    write('Masukkan jumlah barang yang mau dibeli :');
    readln(N);
    for i := 1 to N do
        begin
        write('Masukkan Harga Barang Ke-', i, ':');
        readln(harga);
        Total := Total + harga;
    end;
    if Total < 100000 then
        begin 
            diskon := 0;
        end
    else if (100000 <= Total) and (Total < 500000) then
        begin
            diskon := 10;
        end
    else
        begin
            diskon := 20;
        end;
    totalBayar := Total - (Total*diskon/100);
    writeln;
    writeln('========== RINCIAN BELANJA ==========');
    writeln('Jumloah Barang       :', N);
    writeln('Total Sebelum Diskon : Rp', Total:0:2);
    writeln('Diskon               : ', diskon : 0 : 2,'%');
    writeln('Besar Diskon         : Rp', (Total*diskon/100):0:2);
    writeln('Total Bayar Akhir    : Rp', totalBayar:0:2);
    writeln('=====================================');
end.