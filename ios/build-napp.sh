##
## Build an Appcelerator Android Module
## Then copy it to the default module directory
##
## (c) Napp ApS
## Mads Møller
##


## How to run the script
## write in terminal in the root folder of your project:
## bash ./build-napp.sh

## clean build folder
find ./build -mindepth 1 -delete


## compile the module
./build.py

## where is manifest
FILENAME='./manifest'


## FIND MODULE ID
MODULE_ID=$(grep 'moduleid' $FILENAME -m 1)
MODULE_ID=${MODULE_ID#*: } # Remove everything up to a colon and space

## FIND MODULE VERSION
MODULE_VERSION=$(grep 'version' $FILENAME -m 1) ## only one match
MODULE_VERSION=${MODULE_VERSION#*: } # Remove everything up to a colon and space

## unzip compiled module - and override if existing
unzip -o ./$MODULE_ID-iphone-$MODULE_VERSION.zip -d /Users/$USER/Library/Application\ Support/Titanium


## Optional: You could run a app now - using your new module
PROJECT_PATH='/Volumes/DATA/Titanium/PFALinkTest'
cd $PROJECT_PATH

titanium clean

#cd $PROJECT_PATH
#titanium build -p android -T device --device-id R32D300N6VF

titanium build -p iphone -T simulator