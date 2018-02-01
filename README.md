# Infrastructure as Code (IAC)

## Install Server
```
sudo ./init-server.sh
```
- Install Docker CE
- Instal Docker-Compose
- Install Registry Homolog
- Push Java Image to the Registry   

Criar Registry prod:   
```
cd registry
sudo ./registry.sh prod
```

## Install Client
```
sudo ./init-client.sh
```
- Install Docker CE
- Instal Docker-Compose
- Install Registry Local (Dev)
- Push Java Image to the Registry   
- Enable Insecure Registries
- Added Registry Cert in docker-client