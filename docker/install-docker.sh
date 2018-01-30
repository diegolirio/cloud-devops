echo "........................................................................................."
echo " apt-get update "
echo "........................................................................................."
apt-get update 

echo "........................................................................................."
echo " apt-get install -y apt-transport-https ca-certificates curl software-properties-common  "
echo "........................................................................................."
apt-get install -y apt-transport-https ca-certificates curl software-properties-common 

echo "........................................................................................."
echo " curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -  "
echo "........................................................................................."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "........................................................................................."
echo " apt-key fingerprint 0EBFCD88  "
echo "........................................................................................."
apt-key fingerprint 0EBFCD88

echo "........................................................................................."
echo " add-apt-repository deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable "
echo "........................................................................................."
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo "........................................................................................."
echo " apt-get update "
echo "........................................................................................."
apt-get update

echo "........................................................................................."
echo " apt-get install docker-ce -y "
echo "........................................................................................."
apt-get install docker-ce -y

echo "........................................................................................."
echo " apt-cache madison docker-ce  "
echo "........................................................................................."
apt-cache madison docker-ce 