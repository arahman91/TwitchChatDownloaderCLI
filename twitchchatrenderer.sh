#!/bin/bash

read -p "Enter VOD ID: " vodid
twitchdownloadercli -m ChatDownload --id ${vodid} -o ${vodid}_chat.json
twitchdownloadercli -m ChatRender -i ${vodid}_chat.json -h 1080 -w 422 --framerate 30 --update-rate 0 --font-size 18 -o ${vodid%}_chat.mp4
