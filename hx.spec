Summary:	HotlineX (hx) client
Summary(pl):	Klient HotlineX (hx)
Name:		hx
Version:	0.7.14
Release:	2
License:	GPL
Group:		Networking/Utilities
Group(de):	Netzwerkwesen/Werkzeuge
Group(pl):	Sieciowe/Narzêdzia
Source0:	%{name}-%{version}.tar.bz2
#Source0:	http://hx.fortyoz.org/%{name}-%{version}.tar.gz
URL:		http://hx.fortyoz.org/
BuildRoot:	%{tmpdir}/%{name}-%{version}-root-%(id -u -n)

%description
HotlineX (hx) is an implementation of the Hotline protocol for un*x
based systems.

%description -l pl
Jest to pakiet pozwalaj±cy na korzystanie z zasobów hotline pod
systemami z X w nazwie, BSD te¿ siê licz±.

%prep
%setup -q -n %{name}

%build
CFLAGS="%{rpmcflags}" \
LDFLAGS="%{rpmldflags}" \
./configure --prefix=%{_prefix}
%{__make}

%install
rm -rf $RPM_BUILD_ROOT
install -d $RPM_BUILD_ROOT{%{_bindir},%{_mandir}/man1}
install hx $RPM_BUILD_ROOT%{_bindir}
install hx.1 $RPM_BUILD_ROOT%{_mandir}/man1

gzip -9nf CHANGES FAQ README

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(644,root,root,755)
%doc CHANGES.gz FAQ.gz README.gz
%attr(755,root,root) %{_bindir}/*
%{_mandir}/man1/*
