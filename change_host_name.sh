sudo hostname $1
echo "127.0.0.1 $1" | sudo tee -a /etc/hosts
echo "$1" | sudo tee /etc/hostname
