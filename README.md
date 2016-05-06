# hive-appium
Appium helper scripts for the hive

## Pre-requisite
  
Symlink executables for Android and iOS to any of your default path

Set default appium 

    ln -s /path/to/node_modules/.bin/appium /usr/bin/appium-android
    ln -s /path/to/node_modules/appium/lib/server/main.js /usr/bin/appium-ios

Set appium path for specific appium version (ex: appium version 1.2.3)

    ln -s /path/to/node_modules/.bin/appium /usr/bin/appium-android@1.2.3
    ln -s /path/to/node_modules/appium/lib/server/main.js /usr/bin/appium-ios@1.2.3

Execution command:

    RUBYLIB=lib ruby ./bin/hive-appium --help
    RUBYLIB=lib ruby ./bin/hive-appium --android --udid 'xxxx' -p 1234 --bp 1236 --cp 1238 --params '--orientation LANDSCAPE'



