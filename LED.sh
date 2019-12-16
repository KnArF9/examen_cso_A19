#!/bin/bash
# Initialisation des GPIOs. Les GPIOs nécessaires sont activés avec la commande export, puis la direction est choisie.
if [ -d "/sys/class/gpio/gpio71" || "/sys/class/gpio/gpio233" ];then
echo "dossier gpio existant"
exit 0
fi

echo "71" > /sys/class/gpio/export #del
echo "out" > /sys/class/gpio/gpio71/direction

echo "233" > /sys/class/gpio/export #bouton
echo "in" > /sys/class/gpio/gpio233/direction

while : 
do
	if [ $(cat /sys/class/gpio/gpio233/value) -eq 0 ];
	then 
	if [ $(cat /sys/class/gpio/gpio71/value) -eq 0 ];
	then
		echo "1" > /sys/class/gpio/gpio71/value
	fi
	if [ $(cat /sys/class/gpio/gpio71/value) -eq 1 ];
	then
		echo "0" > /sys/class/gpio/gpio71/value
 	fi
	fi
done
