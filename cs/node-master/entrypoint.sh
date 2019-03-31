#! /bin/sh
# appLariat generic entrypoint.sh

echo "Printing build log"
cat /build.log

exec npm start
