Summary: This is a java shell.
Name: jarminal  
Version: 0.1
Release: 1
License: GPL
Group: Applications
Source0: %{name}-%{version}.tar.gz
BuildRoot: %{_tmppath}/%{name}-%{version}-%{release}-build
Prereq: python

%description
This application is a java shell. It emulates the python shell to provide a 
    place to execute java commands without having to go through the hassle of create, compile run that is
    typical with java

%prep
%setup -q -n %{name}-%{version}

%build
make

%install
make DESTDIR=%buildroot install

%clean
rm -rf ${RPM_BUILD_ROOT}

%files
%defattr(-,root,root)
/usr/bin/append_to_import_file
/usr/bin/create_java_file
/usr/bin/create_partial_java_file
/usr/bin/execute_java_file
/usr/bin/get_class_name
/usr/bin/is_class_def
/usr/bin/jarminal
/usr/bin/jarminal_read
/usr/bin/jenv
/usr/bin/read_append

%post
