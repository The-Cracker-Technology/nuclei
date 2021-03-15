rm -rf /opt/ANDRAX/nuclei
mkdir /opt/ANDRAX/nuclei

cd v2/cmd/nuclei

go build
strip nuclei

cp -Rf nuclei /opt/ANDRAX/nuclei/nuclei
chmod 755 /opt/ANDRAX/nuclei/nuclei

nuclei -version
