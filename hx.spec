%define name hx

Summary:	HotlineX (hx) client
Summary(pl):	HotlineX (hx) Klient hotline
Name:		%{name}
Version:	0.7.14
Release:	1
Source0:	%{name}-%{version}.tar.bz2
URL:		http://krazynet.com/hx/
License:	GPL
Group:		Networking/Utilities
Group(de):	Netzwerkwesen/Werkzeuge
Group(pl):	Sieciowe/Narzêdzia
BuildRoot:	%{tmpdir}/%{name}-%{version}-root-%(id -u -n)

%description
HotlineX (hx) is an implementation of the Hotline protocol for un*x
based systems.

%description(pl)
jest to pakiet pozwalajacy na korzystanie z zasobow hotline pod
systemami z X w nazwie BSD tez siê licz¹.

%prep
rm -rf $RPM_BUILD_ROOT

%setup -q -n %{name}

%build
CFLAGS="%{rpmcflags}" 
LDFLAGS=%{rpmldflags} 
./configure --prefix=%{_prefix}
%{__make}

%install
rm -rf $RPM_BUILD_ROOT
install -m755 -d $RPM_BUILD_ROOT%{_datadir}/{bin,man/man1}
install -m 755 -d $RPM_BUILD_ROOT%{_bindir}/
install -m 755 hx $RPM_BUILD_ROOT%{_bindir}/
install hx.1 $RPM_BUILD_ROOT%{_mandir}/man1/


%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(644,root,root,755)
%doc CHANGES FAQ README
%attr(755,root,root) %{_bindir}/*
%{_mandir}/man1/*
