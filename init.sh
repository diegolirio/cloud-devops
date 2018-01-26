echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
echo "LETS INSTALL DOCKER CE"
echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
sh ./install-docker.sh

echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
echo "LETS INSTALL DOCKER COMPOSE"
echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
sh ./install-docker-compose.sh

env="hom"
echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
echo "DEPLOY REGISTRY $env"
echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
sh ./registry.sh $env

echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
echo "Pull And Push IMAGE java:8-jre-alpine"
echo ".............................. *************************** .............................."
echo ".............................. *************************** .............................."
docker pull java:8-jre-alpine
docker tag java:8-jre-alpine localhost:5000/java:8-jre-alpine
docker push localhost:5000/java:8-jre-alpine