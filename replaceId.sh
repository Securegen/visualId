#!/bin/bash

if [ -z ${CM_HOME+x} ]; then read -p "Enter the path to the build dir: " -e CM_HOME; fi

CM_WALLPAPER=$CM_HOME/vendor/cm/overlay/common/frameworks/base/core/res/res

rm -rf $CM_WALLPAPER/drawable-sw720dp-nodpi/default_wallpaper.jpg
rm -rf $CM_WALLPAPER/drawable-hdpi/default_wallpaper.jpg
rm -rf $CM_WALLPAPER/drawable-xhdpi/default_wallpaper.jpg
rm -rf $CM_WALLPAPER/drawable-xxxhdpi/default_wallpaper.jpg
rm -rf $CM_WALLPAPER/drawable-xxhdpi/default_wallpaper.jpg
rm -rf $CM_WALLPAPER/drawable-sw600dp-nodpi/default_wallpaper.jpg
rm -rf $CM_WALLPAPER/drawable-nodpi/default_wallpaper.jpg

cp -rf wallpapers/default_wallpaper.jpg $CM_WALLPAPER/drawable-sw720dp-nodpi/
cp -rf wallpapers/default_wallpaper.jpg $CM_WALLPAPER/drawable-hdpi/
cp -rf wallpapers/default_wallpaper.jpg $CM_WALLPAPER/drawable-xhdpi/
cp -rf wallpapers/default_wallpaper.jpg $CM_WALLPAPER/drawable-xxxhdpi/
cp -rf wallpapers/default_wallpaper.jpg $CM_WALLPAPER/drawable-xxhdpi/
cp -rf wallpapers/default_wallpaper.jpg $CM_WALLPAPER/drawable-sw600dp-nodpi/
cp -rf wallpapers/default_wallpaper.jpg $CM_WALLPAPER/drawable-nodpi/

CM_ANIMATION=$CM_HOME/vendor/cm/prebuilt/common/bootanimation

rm -rf $CM_ANIMATION/*.zip
rm -rf $CM_ANIMATION/halfres/*.zip

cp -R bootanimation/* $CM_ANIMATION
cd $CM_ANIMATION/halfres
sh $CM_ANIMATION/halfres/generate-half-res-anims.sh
