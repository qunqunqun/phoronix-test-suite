#!/bin/sh

tar -xf libwebp-1.1.0-mac-10.15.tar.gz
unzip -o sample-photo-6000x4000-1.zip


echo "#!/bin/sh
./libwebp-1.1.0-mac-10.15/bin/cwebp sample-photo-6000x4000.JPG -o out.webp \$@ > \$LOG_FILE 2>&1
echo \$? > ~/test-exit-status" > webp
chmod +x webp
