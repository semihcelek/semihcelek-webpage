#!/bin/bash
if [[ -d public ]] #checks if there's any public folder exists
then
   echo "Removing Existing PublicFolder..."
   rm -rf public
   echo "Building Hugo Site..."
   hugo -D
else
  echo "Building Hugo Site..."
  hugo -D
fi

echo "Copy public to nginx folder"
   cp -R -f public /var/www/cabin
