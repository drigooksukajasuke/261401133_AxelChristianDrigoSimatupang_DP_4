program kal;
uses crt;

var
    pilihan : integer;
    angka1, angka2, hasil : integer;
    jawaban : string;

begin
    repeat
        writeln('Menu Pilihan');
        writeln('1. Penjumlahan');
        writeln('2. Pengurangan');
        writeln('3. Perkalian');
        writeln('4. Pembagian');
        writeln('5. DIV');
        writeln('6. MOD');
        writeln('Masukkan Pilihan anda: ');
        readln(pilihan);

        writeln('Masukkan angka pertama:');
        readln(angka1);

        writeln('Masukkan angka kedua:');
        readln(angka2);

        case pilihan of
            1: hasil := angka1 + angka2;
            2: hasil := angka1 - angka2;
            3: hasil := angka1 * angka2;
            4: hasil := angka1 div angka2;
            5: hasil := angka1 div angka2;
            6: hasil := angka1 mod angka2;
        else
            writeln('Maaf, Pilihan tidak tersedia');
        end;

        if (pilihan >= 1) and (pilihan <= 6) then
            writeln('Hasil = ', hasil);

        writeln;
        writeln('Apakah mau melakukan perhitungan lagi? (Y/T): ');
        readln(jawaban);

    until (jawaban = 'T') or (jawaban = 't');
end.
