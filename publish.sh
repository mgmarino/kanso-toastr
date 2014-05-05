#!/bin/bash
MODULENAME=toastr
CWD=`pwd`
./generate_with_version.sh
PUBLISHDIR=${CWD}/publish
mkdir ${PUBLISHDIR} 
mkdir ${PUBLISHDIR}/css 
cp README.md kanso.json ${MODULENAME}.js ${PUBLISHDIR} 
cp ${MODULENAME}.css ${PUBLISHDIR}/css
cd ${PUBLISHDIR}
kanso publish
cd ${CWD} 
rm -rf ${PUBLISHDIR} 

