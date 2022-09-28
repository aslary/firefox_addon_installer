#!/bin/bash

tmp_dir=tmp_dir_$(date +%s)
cd ~/Downloads
mkdir $tmp_dir
cd $tmp_dir

# Base URL of the Firefox add-on store
url='https://addons.mozilla.org/firefox/downloads/file/'

# Specific identifiers of popular add-ons/extensions
arr=(4003969         4007587             3986147     4002797         3821195        4006940)
#    uBlock Origin   AdGuard AdBlocker   Bitwarden   Idca cookies    Popup Blocker  SponsorBlock

# Add $i.xpi suffix to all elements in $arr
for i in "${!arr[@]}"
do
   arr[$i]+='/'$i'.xpi'
   echo ${arr[$i]}
done

# Adds a prefix of $url to each element in $arr and stores the resulting array as a space separated string
arr_each_element_prefixed=${arr[@]/#/$url}

# Downloads all add-ons defined in $arr
# Note that the created filenames do not really exist on the add-on servers, however, providing a random filename still results into the latest add-on version being downloaded
wget $arr_each_element_prefixed

# Since wget stores the files under the specified name, no conflicts occur, meaning that two files never have the same filename and Firefox can open the .xpi files easily
firefox $(ls)

# Clean-up
cd ..
rm -rf $tmp_dir
