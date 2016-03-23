#!/bin/bash

# Bit of an experiment to create a conf/ dir based on "stock" bits plus
# custom overlays. This process needs to be formalized...


DEST=../openidm

STOCK=~/packages/openidm

CUSTOM=.

echo "Creating conf"

cp -Rfv $STOCK/{conf,scripts} $DEST/

echo "Copying custom overlays"

cp -Rfv $CUSTOM/{conf,scripts} $DEST

echo "Deleting files not required"

rm -f $DEST/conf/repo.orientdb.json
rm -fr $DEST/db/openidm
