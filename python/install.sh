echo "Install python dependencies ..."

sudo DEBIAN_FRONTEND=noninteractive apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo DEBIAN_FRONTEND=noninteractive apt-get update -y
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y docker-ce
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential nodejs npm
yes | sudo pip3 install -r ./python/requirements.txt
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3
