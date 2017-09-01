Name: demo-app
Version: 5
Release: 0
Summary: Cockpit Demo Application
License: LGPLv2.1+

Source: demo-app.tar.gz
BuildArch: noarch

%define debug_package %{nil}

%description
Cockpit Demo Application

%prep

%build

%install
mkdir -p %{buildroot}
tar --strip-components=1 -xzf %{sources} -C %{buildroot}
find %{buildroot} -type f >> files.list
sed -i "s|%{buildroot}||" *.list

%files -f files.list
