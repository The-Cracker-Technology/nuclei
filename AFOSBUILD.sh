rm -rf /opt/ANDRAX/nuclei
mkdir /opt/ANDRAX/nuclei

cd v2/cmd/nuclei

go build
strip nuclei

cp -Rf nuclei /opt/ANDRAX/nuclei/nuclei
chmod 755 /opt/ANDRAX/nuclei/nuclei

WORKDIR=$(pwd)

cd /opt/ANDRAX/nuclei

nuclei -update-templates

cd $WORKDIR
