#!/bin/bash

echo "================ Install Config Check START ================"

if [ -z "$customInstallConfigURL" ]
    then
        #empty
        wget -nv https://raw.githubusercontent.com/amitmangalvedkar/maximo/main/src/azure/install-config.yaml -O /tmp/OCPInstall/install-config.yaml
    else
        wget -nv $customInstallConfigURL -O /tmp/OCPInstall/install-config.yaml
        #custom
     fi

#replace variables that exist
envsubst < /tmp/OCPInstall/install-config.yaml > /tmp/OCPInstall/QuickCluster/install-config.yaml

echo "================ Install Config Check END ================"
