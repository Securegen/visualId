#!/bin/bash

if [ -z ${cmHome+x} ]; then read -p "Enter the path to the build dir: " -e cmHome; fi

cmWallpaper=$cmHome/vendor/cm/overlay/common/frameworks/base/core/res/res

rm -rf $cmWallpaper/drawable-sw720dp-nodpi/default_wallpaper.jpg
rm -rf $cmWallpaper/drawable-hdpi/default_wallpaper.jpg
rm -rf $cmWallpaper/drawable-xhdpi/default_wallpaper.jpg
rm -rf $cmWallpaper/drawable-xxxhdpi/default_wallpaper.jpg
rm -rf $cmWallpaper/drawable-xxhdpi/default_wallpaper.jpg
rm -rf $cmWallpaper/drawable-sw600dp-nodpi/default_wallpaper.jpg
rm -rf $cmWallpaper/drawable-nodpi/default_wallpaper.jpg

cp -rf wallpapers/default_wallpaper.jpg $cmWallpaper/drawable-sw720dp-nodpi/
cp -rf wallpapers/default_wallpaper.jpg $cmWallpaper/drawable-hdpi/
cp -rf wallpapers/default_wallpaper.jpg $cmWallpaper/drawable-xhdpi/
cp -rf wallpapers/default_wallpaper.jpg $cmWallpaper/drawable-xxxhdpi/
cp -rf wallpapers/default_wallpaper.jpg $cmWallpaper/drawable-xxhdpi/
cp -rf wallpapers/default_wallpaper.jpg $cmWallpaper/drawable-sw600dp-nodpi/
cp -rf wallpapers/default_wallpaper.jpg $cmWallpaper/drawable-nodpi/

cmAnimation=$cmHome/vendor/cm/prebuilt/common/bootanimation

rm -rf $cmAnimation/*.zip
rm -rf $cmAnimation/halfres/*.zip

cp -R bootanimation/* $cmAnimation
cd $cmAnimation/halfres
sh $cmAnimation/halfres/generate-half-res-anims.sh
