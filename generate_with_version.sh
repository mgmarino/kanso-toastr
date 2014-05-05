#!/bin/bash
MODULENAME=toastr
VERSION=2.0.2
URL="http:\/\/codeseven.github.io\/toastr\/"
bower install ${MODULENAME}#${VERSION}
cp bower_components/${MODULENAME}/${MODULENAME}.js . 
cp bower_components/${MODULENAME}/${MODULENAME}.css . 
echo $VERSION
for var in README.md kanso.json
do
  sed -e s/@VERSION@/$VERSION/g \
      -e s/@MODULENAME@/$MODULENAME/g \
      -e s/@URL@/$URL/g \
             $var.in > $var 
done
rm -rf bower_components
