# Registry

## Criar Registry
Para criar um registry basta executar o comando abaixo, no lugar do `[env]`, coloque `dev ou hom ou prod`:   
```
sudo ./registry.sh [env]

### Criando o proprio certificado

create a certificate with the OpenSSL-Tool:   
```sh
openssl req -newkey rsa:4096 -nodes -sha256 \
                -keyout certs/domain.key -x509 -days 356 \
                -out certs/domain.cert
```                
```
Generating a 4096 bit RSA private key
..........................................................................................................................................................................................................++
...............................................................................................................++
writing new private key to 'registry_certs/domain.key'
-----
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [AU]:BR
State or Province Name (full name) [Some-State]:Sao Paulo
Locality Name (eg, city) []:Sao Paulo
Organization Name (eg, company) [Internet Widgits Pty Ltd]:Phoenix4Go
Organizational Unit Name (eg, section) []:Phoenix
Common Name (e.g. server FQDN or YOUR name) []:Phoenix
Email Address []:phoenix4go@gmail.com
```

Rodando docker registry com certificado:   
```
docker run -d -p 5000:5000 \        
 -v $(pwd)/certs:/certs \
 -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.cert \
 -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
 --restart=always --name registryhom registry:2
``` 
