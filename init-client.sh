echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
echo "LETS INSTALL DOCKER CE"
echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
sh ./docker/install-docker.sh

echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
echo "LETS INSTALL DOCKER COMPOSE"
echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
sh ./docker-compose/install-docker-compose.sh

cd registry
env="dev"
echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
echo "DEPLOY REGISTRY $env"
echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
sh ./registry.sh $env
cd ..

echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
echo "Pull And Push IMAGE java:8-jre-alpine"
echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
docker pull java:8-jre-alpine
docker tag java:8-jre-alpine localhost:5000/java:8-jre-alpine
docker push localhost:5000/java:8-jre-alpine

echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
echo "LETS Config Docker client Regsitry hom "
echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
cp registry/client/daemon.json /etc/docker/

echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
echo "LETS Config Docker client Regsitries prod "
echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
cd registry
sh ./copy-certs-client.sh