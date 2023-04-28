#!/usr/bin/env bash

#Stop running server

printf "Stopping running server \n \n \n"


# Remove previous compiled js files
printf "Removing previous build & node_modules... \n \n \n"
rm -r dist/
rm -r node_modules/

# Install node_modules
printf "Installing node_modules... \n \n \n"
npm install
