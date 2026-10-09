program angka;
uses crt;

var
    i,N, pilihan : integer;

begin
    clrscr;
    write('Masukkan nilai N :');
    readln(N);
    
    writeln('1. Ganjil');
    writeln('2. Genap');
    writeln('Masukkan pilihan kategori:');
    readln(pilihan);
    
    i := 0;
    while i <= N do
        begin
            i := i + 1;
      
            if (pilihan  =1) and (i mod 2 = 0) then continue;
            if (pilihan = 2) and (i mod 2 <> 0) then continue;


            if i mod 5 = 0 then continue;
        
            write(i, ' ');
        
        end;

        writeln;
        readln;
end.
