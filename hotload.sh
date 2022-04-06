#!/bin/bash

inotifywait -q -m -e close_write -r * --exclude ".*.pyc|.coverage"  | while read -r path event filename;
do
	echo -e "\n\n\033[1;7;37mRunning script because $path$filename was $event\033[0;1;0m"
	pipenv run script
done;
