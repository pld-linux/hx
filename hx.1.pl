.\" T³umaczenie (c) Wojciech Aleksander <walx@polbox.com>, 2002
.\" Na podstawie wersji programu hx dostêpnego w dystrybucji Debian GNU/Linux 3.0
.\" 
.TH hx 1 "HotlineX" "asf"
.SH Nazwa
hx \- Klient HotlineX.
.SH Sk³adnia
.B hx
.RB [ \-n
.IR pseudonim ]
.RB [ \-i
.IR ikona ]
.SH Opis
Program
.B hx
jest pe³noekranowym interfejsem dla Hotline sterowanym z wiersza poleceñ.
.SH Polecenia
.TP
.I "server [serwer [port]] [-l identyfikator] [-p has³o]"
pod³±cza do serwera u¿ywaj±c podanego identyfikatora u¿ytkownika i has³a
.TP
.I "who [string]"
wy¶wietla listê u¿ytkowników, je¿eli podana zostanie jaka¶ warto¶æ, wy¶wietla
tylko te pseudonimy, które j± zawieraj±.
.TP
.I "pwho [chat] [string]"
wy¶wietla listê u¿ytkowników bie¿±cego czatu, je¶li ¿aden nie zostanie zdefiniowany.
.TP
.I "nick [-i ikona]"
zmienia pseudonim oraz ikonê na podane warto¶ci.
.TP
.I "icon <ikona>"
zmienia ikonê.
.TP
.I "me <chat>"
wysy³a czat poprzedzony *** (alt+return robi± to samo)
.TP
.I "msg {nick|sock#} <string>"
wysy³a wiadomo¶æ prywatn± do nick|sock#.
.TP
.I "kick [-b] {nick|sock#}"
od³±cza nick|sock# od serwera.
.TP
.I "news"
wy¶wietla plik z newsami na serwerze.
.TP
.I "post <string>"
wysy³a podany ³añcuch na newsy.
.TP
.I "chat {nick|sock#}"
rozpoczyna prywatn± rozmowê z nick|sock#.
.TP
.I "join <chat#>"
do³±cza siê do rozmowy prywatnej chat#.
.TP
.I "leave {chatsubject|chat#}"
opuszcza prywatn± rozmowê chat#.
.TP
.I "invite {chatsubject|chat#} {nick|sock#}"
zaprasza nick|sock# do rozmowy.
.TP
.I "subject <string>"
ustala temat rozmowy bie¿±cej
.TP
.I "chats"
wy¶wietla listê rozmów, w których uczestniczysz.
.TP
.I "load <plik1> [plik2...]"
wywo³uje polecenia z plików.
.TP
.I "type [-n] [-c] <plik1> [plik2...]"
wysy³a pliki do rozmowy lub newsów.
.TP
.I "ls [katalog]"
wy¶wietla zawarto¶æ katalogu lub zdalnie robi cwd, je¶li nie zostanie
podana ¿adna warto¶æ.
.TP
.I "cd <katalog>"
zmienia zdalny katalog na podany.
.TP
.I "lcd <katalog>"
zmienia katalog lokalny na podany.
.TP
.I "pwd"
wy¶wietla zdalny katalog roboczy.
.TP
.I "lpwd"
wy¶wietla lokalny katalog roboczy.
.TP
.I "dirchar <dirchar>"
zmienia separator katalogów na warto¶æ podan± jako dirchar.
.TP
.I "get [-aR] [-z <zdalny> <lokalny>] <plik1> [plik2...]"
kopiuje pliki z komputera zdalnego na lokalny.
.TP
.I "put [-aR] [-z <lokalny> <zdalny>] <plik1> [plik2...]"
kopiuje pliki z komputera lokalnego na serwer.
.TP
.I "mkdir <plik1> [plik2...]"
tworzy katalogi na maszynie zdalnej.
.TP
.I "rm <plik1> [plik2...]"
kasuje pliki z serwera.
.TP
.I "xfers"
wy¶wietla listê bie¿±cych transferów.
.TP
.I "xfkill [all] [xfer1] [xfer2...]"
koñczy podany transfer.
.TP
.I "colourz"
wysy³a rozmowê w kolorach ANSI.
.TP
.I "clear"
czy¶ci bie¿±cy bufor ekranu i terminalu.
.TP
.I "save <plik>"
zapisuje stan bie¿±cego bufora ekranu do pliku.
.TP
.I "hl [type]"
wysy³a nag³ówek hl z {type = type; trans = hx_trans; flag = 0; len = len2 = 2; hc = 0;}
.TP
.I "version"
wy¶wietla numer wersji programu hx, którego aktualnie u¿ywasz.
.TP
.I "commands"
wy¶wietla listê wszystkich poleceñ.
.SH Zmienne systemowe
.TP
.B HXNICK
Pseudonim, jaki ma zostaæ u¿yty zamiast identyfikatora z pliku passwd.
.TP
.B HXICON
Ikona, jaka ma zostaæ u¿yta.
.TP
.B HOME
Zastêpuje domy¶ln± ¶cie¿kê z pliku passwd.
.TP
.B TERM
Typ terminalu w u¿yciu. (tj. vt100)
.TP
.B LINES
Ilo¶æ linii na terminalu.
.TP
.B COLUMNS
Ilo¶æ kolumn na terminalu.
.SH Pliki
.B ~/.hxrc
Skrypt wczytywany przy uruchamianiu programu
.SH Informacje
http://krazynet.com/hx/ \- email: ran@krazynet.com
.SH Zobacz tak¿e
hxd(8)
