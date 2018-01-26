if ["$1" = "" ]; then
   echo "Param name required (dev or hom or prod)"
   exit 1
fi

env=$1

if [ $env = "prod" ]; then
    docker-compose -f docker-compose-registry-prod.yml down
    docker-compose -f docker-compose-registry-prod.yml up -d
elif [ $env = "hom" ]; then
    docker-compose -f docker-compose-registry-hom.yml down
    docker-compose -f docker-compose-registry-hom.yml up -d    
elif [ $env = "dev" ]; then
    docker-compose -f docker-compose-registry-dev.yml down
    docker-compose -f docker-compose-registry-dev.yml up -d       
else
    echo "Env Not Implemented!!!"
    echo "Registry not created"
fi