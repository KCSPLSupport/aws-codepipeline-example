%define source_repo %(echo $PWD)
###############################################################################
###################         Example Website -- RPM          ###################
###################         ======================          ###################
###############################################################################


Name          :     example-website
Summary       :     Example Website
Group         :     Example/Website
Version       :     1.0.0
Release       :     1
License       :     GPLv3+

%description
The example-website package installs an example website.


%build
mkdir -p %{buildroot}/etc/nginx/conf.d/
mkdir -p %{buildroot}/var/www/example/
cp -rf %{source_repo}/webroot/* %{buildroot}/var/www/example/
cp -rf %{source_repo}/configs/etc/nginx/conf.d/* %{buildroot}/etc/nginx/conf.d/

%clean
rm -rf %{buildroot}

%files
%config(noreplace) /etc/nginx/conf.d/example.conf
/var/www/example/

