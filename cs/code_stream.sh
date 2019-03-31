#!/bin/sh

shit = $1
echo $shit
git clone https://github.com/garreeoke/acme-air.git
mv acme-air code
docker build --no-cache -t harbor.mylab.com/swift/acmeweb:1 .
cd ..
docker push harbor.mylab.com/swift/acmeweb:1
