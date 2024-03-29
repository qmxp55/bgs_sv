#!/bin/bash

module load python/3.7-anaconda-2019.07
module unload desimodules
source /project/projectdirs/desi/software/desi_environment.sh 18.7
export PATH=$PATH:/global/homes/q/qmxp55/DESI/desitarget/bin
export PYTHONPATH=$PYTHONPATH:/global/homes/q/qmxp55/DESI/desitarget/py

export LSDIR='/global/project/projectdirs/cosmo/data/legacysurvey/dr8/south'
export TARGDIR='/global/cscratch1/sd/qmxp55/desitarget_output'
export WEBDIR='/global/cscratch1/sd/qmxp55/desitarget_output/WEB'
export DR='8.0'
export VERSION='1'
export PIXWEIGHT='/project/projectdirs/desi/target/catalogs/dr8/0.31.1/pixweight'
export BIN='/global/homes/q/qmxp55/DESI/desitarget/bin'

python $BIN/select_sv_targets $LSDIR/sweep/$DR $TARGDIR/targets-sv-dr$DR-$VERSION.fits --tcnames BGS --radecbox 170,171,8,9

#python $BIN/select_sv_targets $LSDIR/sweep/$DR $TARGDIR/targets-sv-dr$DR-$VERSION.fits --tcnames BGS --radecbox 170,171,8,9 --writeall --nosecondary


echo "output catalogue stored here: $TARGDIR/targets-sv-dr$DR-$VERSION.fits"