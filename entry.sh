#!/usr/bin/env bash
echo "********************`date`********************"

echo ">>>>>>>>>>>>>>>>>>>start set hosts <<<<<<<<<<<"
cp /etc/hosts /etc/hosts.temp
sed -i "s/.*$(hostname)/172.27.0.11 $(hostname)/" /etc/hosts.temp
cat /etc/hosts.temp > /etc/hosts

echo /etc/hosts
echo ">>>>>>>>>>>>>>>>>>>>end set hosts >>>>>>>>>>>"

echo "cleaning and reset  finish..........."

java -jar  usr/app/app.jar
