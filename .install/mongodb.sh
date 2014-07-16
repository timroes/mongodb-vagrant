# Add MongoDB key
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
# Add MongoDB repository
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list > /dev/null
# Only update added repository (to save time)
apt-get update -o Dir::Etc::sourcelist="sources.list.d/mongodb.list" -o Dir::Etc::sourceparts="-" -o APT::Get::List-Cleanup="0"
# Install MongoDB
apt-get install -y mongodb-org

# Comment out bind_ip to also allow connection from vagrant host
sed -i'' '/^bind_ip/ s/^/#/' /etc/mongod.conf

# Restart MongoDB
service mongod restart

# Download and import zip sample
mongoimport -d test -c zips < /vagrant/.install/zips.json
