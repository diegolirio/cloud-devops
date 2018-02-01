if [ ! -d /etc/docker/certs.d/registry.phoenix4go.com ]
then
    mkdir -p /etc/docker/certs.d/registry.phoenix4go.com 
fi
rm -rf /etc/docker/certs.d/registry.phoenix4go.com/ca.crt
cp certs_prod/domain.cert /etc/docker/certs.d/registry.phoenix4go.com/ca.crt