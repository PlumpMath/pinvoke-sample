#!/bin/bash

echo "Compiling..."

/Applications/Xamarin\ Studio.app/Contents/MacOS/mdtool -v build pinvoke-mono/pinvoke-mono.sln

rm -r output
mkdir output
cp pinvoke-mono/pinvoke-mono/bin/Debug/pinvoke-mono.exe output/

xcodebuild -project pinvoke-native/pinvoke-native.xcodeproj

cp pinvoke-native/build/Release/libpinvoke-native.dylib output/
