#!/bin/bash

# download whole tablet site to work offline
wget \
     --recursive \
     --no-clobber \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --user=dietrich \
     --password=coco \
     --domains noms.in \
     --no-parent \
     --no-cache \
  noms.in

# delete old backup
#rm -rf www.bak

# move current copy to backup
#mv www www.bak

# rename download to www
#mv tablet.meatclub.in www

# copy app resources into www
#cp -a www.bak/res www/

# rebuild
#cordova build
