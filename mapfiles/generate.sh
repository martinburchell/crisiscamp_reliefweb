#!/bin/bash
#
#  This requires a the filename of a PDF file as an argument. This file must be
#  in the current directory alongside googletilecutter.sh
#
#  Output tile images (lots of them) are initially created in the current
#  directory, but a subdirectory is created. Images and also the  PDF get moved
#  into this at the end. Also any html files are copied there (openlayers.html
#  and cloudmade.html) 
# 
#  It runs imagemagick 'convert' and googletilecutter on this file to generate
#  tiles at several zoom levels.
#
#  Currently multi-page PDFs are dealt with by only working with
#  the first page (page number zero specified with "[0]")
#



#exit on error
set -e

#take filename of a PDF file as parameter
filename=$1

dirname=`basename $filename .pdf`

if [ -d $dirname ]; then
   echo $dirname already exists, skipping...
   exit 0 
fi

mkdir $dirname

echo ---------------------------------------------------
echo "Generating tiles for PDF file $filename into dir '$dirname'"

# 8192px zoom level 5
convert -density 600 $filename[0] -scale 8192x8192 docz5.png
bash googletilecutter.sh -z 5 -o 5 -t 0,0 docz5.png
rm docz5.png

# 4096px zoom level 4
convert -density 600 $filename[0] -scale 4096x4096 docz4.png
bash googletilecutter.sh -z 4 -o 4 -t 0,0 docz4.png
rm docz4.png

# 2048px zoom level 3
convert -density 600 $filename[0] -scale 2048x2048 docz3.png
bash googletilecutter.sh -z 3 -o 3 -t 0,0 docz3.png
rm docz3.png

# 1024px zoom level 2
convert -density 600 $filename[0] -scale 1024x1024 docz2.png
bash googletilecutter.sh -z 2 -o 2 -t 0,0 docz2.png
rm docz2.png

# 512px zoom level 1
convert -density 200 $filename[0] -scale 512x512 docz1.png
bash googletilecutter.sh -z 1 -o 1 -t 0,0 docz1.png
rm docz1.png

# 256px zoom level 0
convert -density 200 $filename[0] -scale 256x256 docz0.png
bash googletilecutter.sh -z 0 -o 0 -t 0,0 docz0.png
rm docz0.png

chmod 644 z*.png

mv $filename ./$dirname/
mv z*.png ./$dirname/
cp *.html ./$dirname/

