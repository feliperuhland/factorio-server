#!/bin/sh

set -e

FINGERPRINT=
IMAGE=
REGION=
SIZE=
SAVE=
DROPLET=

echo "Creating droplet ..."
doctl compute droplet create $DROPLET --ssh-keys $FINGERPRINT --size $SIZE --region $REGION --wait --image $IMAGE &>/dev/null
IP=$(doctl compute droplet get $DROPLET --format PublicIPv4 | tail -n 1)

echo "Waiting for ssh ..."
sleep 15

echo "Getting factorio ..."
ssh -o StrictHostKeyChecking=no root@$IP curl -L --output factorio.tar.xz https://factorio.com/get-download/stable/headless/linux64 &>/dev/null

echo "Decompressing factorio ..."
ssh -o StrictHostKeyChecking=no root@$IP tar -xJf factorio.tar.xz 2> /dev/null &>/dev/null

if [ $1 == "create" ];
	echo "Creating game [$SAVE] ..."
	then ssh -o StrictHostKeyChecking=no root@$IP ./factorio/bin/x64/factorio --create $SAVE 
else
	echo "Uploading saved game [$SAVE] ..."
	scp -o StrictHostKeyChecking=no $SAVE.zip root@$IP:. 1> /dev/null &>/dev/null
fi

set +e
echo "Starting the game ..."
echo "##############################"
echo "SERVER: $IP:34197"
echo "##############################"
ssh -o StrictHostKeyChecking=no root@$IP ./factorio/bin/x64/factorio --start-server $SAVE

set -e
echo "Downloading saved game [$SAVE] ..."
scp -o StrictHostKeyChecking=no root@$IP:$SAVE.zip . &>/dev/null

echo "Removing droplet ..."
doctl compute droplet delete -f $DROPLET &>/dev/null

echo "Finish!"
