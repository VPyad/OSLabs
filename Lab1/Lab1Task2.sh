cd;

# create files
touch file_without_ext;
touch lib.lib;
touch doc.doc;

# move file_without_ext and set execution permission to group 'user'
mv file_without_ext /usr/bin;
cd /usr/bin;
chown :users file_without_ext; # https://www.thegeekstuff.com/2012/06/chown-examples
chmod 711 file_without_ext; # https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/4/html/Step_by_Step_Guide/s1-navigating-ownership.html

# move lib.lib to usr/lib
cd;
mv lib.lib /usr/lib;

# move doc.doc to usr/share/doc/pyadukhov "pyadukhov" will be created if  not exists
cd;
mkdir -p /usr/share/doc/pyadukhov;
mv doc.doc /usr/share/doc/pyadukhov;