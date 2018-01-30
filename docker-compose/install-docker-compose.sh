echo "........................................................................................."
echo " curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose  "
echo "........................................................................................."
curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose 

echo "........................................................................................."
echo " chmod +x /usr/local/bin/docker-compose "
echo "........................................................................................."
chmod +x /usr/local/bin/docker-compose

echo "........................................................................................."
echo " docker-compose --version "
echo "........................................................................................."
docker-compose --version