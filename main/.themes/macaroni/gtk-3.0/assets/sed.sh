#!/bin/sh
sed -i \
         -e 's/#021b21/rgb(0%,0%,0%)/g' \
         -e 's/#fefefe/rgb(100%,100%,100%)/g' \
    -e 's/#032b32/rgb(50%,0%,0%)/g' \
     -e 's/#fefa67/rgb(0%,50%,0%)/g' \
     -e 's/#021b21/rgb(50%,0%,50%)/g' \
     -e 's/#fefefe/rgb(0%,0%,50%)/g' \
	"$@"
