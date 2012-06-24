.\" T�umaczenie (c) Wojciech Aleksander <walx@polbox.com>, 2002
.\" Na podstawie wersji programu hx dost�pnego w dystrybucji Debian GNU/Linux 3.0
.\" 
.TH hx 1 "HotlineX" "asf"
.SH Nazwa
hx \- Klient HotlineX.
.SH Sk�adnia
.B hx
.RB [ \-n
.IR pseudonim ]
.RB [ \-i
.IR ikona ]
.SH Opis
Program
.B hx
jest pe�noekranowym interfejsem dla Hotline sterowanym z wiersza polece�.
.SH Polecenia
.TP
.I "server [serwer [port]] [-l identyfikator] [-p has�o]"
pod��cza do serwera u�ywaj�c podanego identyfikatora u�ytkownika i has�a
.TP
.I "who [string]"
wy�wietla list� u�ytkownik�w, je�eli podana zostanie jaka� warto��, wy�wietla
tylko te pseudonimy, kt�re j� zawieraj�.
.TP
.I "pwho [chat] [string]"
wy�wietla list� u�ytkownik�w bie��cego czatu, je�li �aden nie zostanie zdefiniowany.
.TP
.I "nick [-i ikona]"
zmienia pseudonim oraz ikon� na podane warto�ci.
.TP
.I "icon <ikona>"
zmienia ikon�.
.TP
.I "me <chat>"
wysy�a czat poprzedzony *** (alt+return robi� to samo)
.TP
.I "msg {nick|sock#} <string>"
wysy�a wiadomo�� prywatn� do nick|sock#.
.TP
.I "kick [-b] {nick|sock#}"
od��cza nick|sock# od serwera.
.TP
.I "news"
wy�wietla plik z newsami na serwerze.
.TP
.I "post <string>"
wysy�a podany �a�cuch na newsy.
.TP
.I "chat {nick|sock#}"
rozpoczyna prywatn� rozmow� z nick|sock#.
.TP
.I "join <chat#>"
do��cza si� do rozmowy prywatnej chat#.
.TP
.I "leave {chatsubject|chat#}"
opuszcza prywatn� rozmow� chat#.
.TP
.I "invite {chatsubject|chat#} {nick|sock#}"
zaprasza nick|sock# do rozmowy.
.TP
.I "subject <string>"
ustala temat rozmowy bie��cej
.TP
.I "chats"
wy�wietla list� rozm�w, w kt�rych uczestniczysz.
.TP
.I "load <plik1> [plik2...]"
wywo�uje polecenia z plik�w.
.TP
.I "type [-n] [-c] <plik1> [plik2...]"
wysy�a pliki do rozmowy lub news�w.
.TP
.I "ls [katalog]"
wy�wietla zawarto�� katalogu lub zdalnie robi cwd, je�li nie zostanie
podana �adna warto��.
.TP
.I "cd <katalog>"
zmienia zdalny katalog na podany.
.TP
.I "lcd <katalog>"
zmienia katalog lokalny na podany.
.TP
.I "pwd"
wy�wietla zdalny katalog roboczy.
.TP
.I "lpwd"
wy�wietla lokalny katalog roboczy.
.TP
.I "dirchar <dirchar>"
zmienia separator katalog�w na warto�� podan� jako dirchar.
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
wy�wietla list� bie��cych transfer�w.
.TP
.I "xfkill [all] [xfer1] [xfer2...]"
ko�czy podany transfer.
.TP
.I "colourz"
wysy�a rozmow� w kolorach ANSI.
.TP
.I "clear"
czy�ci bie��cy bufor ekranu i terminalu.
.TP
.I "save <plik>"
zapisuje stan bie��cego bufora ekranu do pliku.
.TP
.I "hl [type]"
wysy�a nag��wek hl z {type = type; trans = hx_trans; flag = 0; len = len2 = 2; hc = 0;}
.TP
.I "version"
wy�wietla numer wersji programu hx, kt�rego aktualnie u�ywasz.
.TP
.I "commands"
wy�wietla list� wszystkich polece�.
.SH Zmienne systemowe
.TP
.B HXNICK
Pseudonim, jaki ma zosta� u�yty zamiast identyfikatora z pliku passwd.
.TP
.B HXICON
Ikona, jaka ma zosta� u�yta.
.TP
.B HOME
Zast�puje domy�ln� �cie�k� z pliku passwd.
.TP
.B TERM
Typ terminalu w u�yciu. (tj. vt100)
.TP
.B LINES
Ilo�� linii na terminalu.
.TP
.B COLUMNS
Ilo�� kolumn na terminalu.
.SH Pliki
.B ~/.hxrc
Skrypt wczytywany przy uruchamianiu programu
.SH Informacje
http://krazynet.com/hx/ \- email: ran@krazynet.com
.SH Zobacz tak�e
hxd(8)
