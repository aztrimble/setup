#! /bin/sh

if grep -q '/swapfile' './fstab'; then
  echo "fstab contains a /swapfile line...Removing the line."
  sed -i "/^\/swapfile/d" ./fstab
else
  echo "fstab does not contain a /swapfile line...Adding the line."
  echo "/swapfile none swap sw 0 0" | sudo tee -a ./fstab
fi


totalmem=$(free -m | awk '/^Mem:/{print $2}')
