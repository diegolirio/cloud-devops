
if ["$1" = "" ]; then
   echo "Param name required (dev or hom or prod)"
   exit 1
fi

env=$1
dir=$(pwd)
pwd
if [ $env = "prod" ]; then
    #docker-compose -f docker-compose-registry-prod.yml down
    #docker-compose -f docker-compose-registry-prod.yml up -d
    docker rm -f registryprod  
    docker run -d -p 5001:5000 -v $dir/certs:/certs -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.cert -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key --restart=always --name registryprod registry:2    
elif [ $env = "hom" ]; then
    docker-compose -f docker-compose-registry-hom.yml down
    docker-compose -f docker-compose-registry-hom.yml up -d  
    #docker rm -f registryhom  
    #docker run -d -p 5000:5000 -v $dir/certs:/certs -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.cert -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key --restart=always --name registryhom registry:2 
elif [ $env = "dev" ]; then
    #docker-compose -f docker-compose-registry-dev.yml down
    #docker-compose -f docker-compose-registry-dev.yml up -d       
    docker rm -f registrydev
    docker run -d -p 5002:5000 -v $dir/certs_local:/certs -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.cert -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key --restart=always --name registrydev registry:2        
else
    echo "Env Not Implemented!!!"
    echo "Registry not created"
fi