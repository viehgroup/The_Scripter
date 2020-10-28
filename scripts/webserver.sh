#!/bin/sh

echo "Enter the type of web server you want to launch"
echo "0. Python"
echo "1. ruby"
echo "2. php"
read no

if [ $no -eq 0 ]
then	
	echo "=================================================================="
	echo "			     PYTHON WEB SERVER			"
	echo "=================================================================="
	python -m SimpleHTTPServer 8080
elif [ $no -eq 1 ]
then
	echo "=================================================================="
	echo "			     RUBY WEB SERVER				"
	echo "=================================================================="
	ruby -run -e httpd
elif [ $no -eq 2 ]
then
	echo "=================================================================="
	echo "			     PHP WEB SERVER				"
	echo "=================================================================="
	php -S 0.0.0.0:8080

fi
