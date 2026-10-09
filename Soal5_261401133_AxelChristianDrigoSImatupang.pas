program niggq;
uses crt;

var 
    maha, tugas, nilai, total, i, j : integer;
    rata : real;

begin
    clrscr;
    write('Masukkan Jumlah Mahasiswa:');
    readln(maha);
    write('Masukkan Jumlah tugas:');
    readln(tugas);

    for i := 1 to maha do
        begin
            total := 0;
            rata := 0;
            writeln();
            writeln('=====Mahasiswa ke-', i,'=====');
            for j := 1 to tugas do
                begin
                    write('Masukkan nilai tugas mahasiswa Ke-',j,':');
                    readln(nilai);
                    total :=  total + nilai;
                end;

                    rata := total / tugas ;
                    writeln('Nilai Rata-Rata:', rata:0:2);
                if rata >= 65 then
                    begin
                        writeln('Status:        LULUS!!');
                    end
                else
                    begin
                        writeln('Status:        TIDAK LULUS!!');
                    end;
        writeln();
        end;

end.     