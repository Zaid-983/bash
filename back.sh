
#!/bin/bash



# update the system
 
echo "updating system packages..."
sudo apt update && sudo apt upgrade -y


#install nginx

echo "installing nginx...."
sudo apt install nginx -y

echo "starting nginx..."
sudo systemctl start nginx

echo "enable nginx to start on boot..."
sudo systemctl enable nginx

echo "check status of nginx..."
sudo systemctl status nginx


echo "NGINX installation completed successfully...."


SOURCE_DIR="/home/ubuntu/zaid.sh"
BACKUP_DIR="/backups"
TIMESTAMP=$(date +"%Y-%m-%d-_%H-%M-%S")
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

#Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

#Perform the backup using tar
echo "Starting backup..of $SOURCE_DIR..."
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"


# $?-last executd command

if [ $? -eq 0 ]; then
    echo "Backup completed successfully: $BACKUP_FILE"
else
    echo "Backup failed!" >&2
    exit 1
fi


echo "Backup process finished!"

