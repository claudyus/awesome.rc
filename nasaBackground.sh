#!/bin/bash

# grabs the nasa image of the day by RSS feed and updates the gnome
# background. add this to your cron jobs to have this happen daily.  this is,
# obviously, a hack, that is likely to break at the slightest change of NASA's
# RSS implementation. yay standards!

#EDITED FOR feh

img_url=`wget -q -O - http://apod.nasa.gov/apod/astropix.html | grep -o '<a [^>]*>' | grep 'jpg' | cut -d \" -f 2`
img_url=http://apod.nasa.gov/$img_url

#rss=`wget -q -O - http://apod.nasa.gov/apod.rss`
#img_url=`echo $rss | grep -o '<description [^>]*>' | grep -o 'http://[^\"]*'`

# overwrite the image
wget -q -O $HOME/.config/awesome/nasa_bg.jpg $img_url

feh --bg-scale $HOME/.config/awesome/nasa_bg.jpg
