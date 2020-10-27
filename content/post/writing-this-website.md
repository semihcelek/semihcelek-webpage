---
title: "Writing This Website"
date: 2020-09-30T19:12:01+03:00
draft: true
authour: "Semih Celek"
tags: ["hugo", "bash-script", "nginx", "vps", "website"]
---

My main goal is the learning programming and web-development in general and having a proper website.

This is a static Hugo website which is hosted on Vps server.

```bash
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
  sudo cp -R -f public/* /var/www/cabin && sudo rm -rf public
```
