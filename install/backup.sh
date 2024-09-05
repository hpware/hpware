read -p "External Drive : " dirdrive
cd /media/$USER/$dirdrive || exit 1
sudo tar -cvpzf backup.tar.gz / --exclude /media/
