program sandi;
uses crt;
var
    passwordbenar, passswordinput : string;
    i : integer;

begin
    clrscr;
    passwordbenar := 'pascal123';
    i := 0;
    repeat
        i := i + 1;
        writeln('Masukkan password yang benar!:');
        readln(passswordinput);
        if passswordinput = passwordbenar then
        begin
            write('Login Berhasil!! Selamat datang :');
            break;
        end;
    until i = 3;
    write('Akses Ditolak! Akun Terkunci');
end.