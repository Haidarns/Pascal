program Login;

uses crt;

var username, password : String;

function tutupinPassword : String;
var c : char;
tmp : String;
begin
	tmp:='';
	
	repeat begin
		c := readkey; 				{<- Mengubah tombol keyboard yang ditekan menjadi char		}
		if(c<>#13) and (c<>#8) then begin	{<- #13 = ENTER, #8 = BACKSPACE					}
			tmp := tmp + c;			{<- menambahkan secara berurutan, char kedalam variabel 'tmp'	}
			write('*');			{<- menuliskan asterisk (*) setiap menekan tombol selain ENTER	}
		end;					{   dan BACKSPACE						}
		if(c = #8) then begin				
			tmp:='';			{<- Menghapuskan isi variabel 'tmp' dan menghapus asterisk	}
			gotoXY(21,2);			{   saat menekan tombol BACKSPACE				}
			clrEOL;				{<- clrEOL = Clear until 'End Of Line'				}
			gotoXY(21,2);			{<- gotoXY(21,2) = memindahkan kursor ke koordinat (21,2)	}
		end;
	end until c = #13;				{<- Perulangan berhenti saat menekan tombol ENTER		}
	
	tutupinPassword := tmp;
end;

begin
	clrscr;
	write('Masukkan Username : ');
	readln(username);
	write('Masukkan Password : ');
	password := tutupinPassword;			{<- Memanggil fungsi tutupinPassword, lalu memasukkan nilai	}
							{   fungsi kedalam variabel password				}
	if (username = 'isengkoding') and (password = 'masukaja') then begin
		clrscr;
		writeln('Selamat datang ',upcase(username));		
		end 
	else begin
		clrscr;
		writeln('Username atau password salah :p');		
	end;
	
	readln;
end.	
