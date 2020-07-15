set SWIFTC=%SystemDrive%\Library\Developer\Toolchains\unknown-Asserts-development.xctoolchain\usr\bin\swiftc.exe
set SDKROOT=%SystemDrive%\Library\Developer\Platforms\Windows.platform\Developer\SDKs\Windows.sdk
set SWIFTFLAGS=-sdk %SDKROOT% -I %SDKROOT%\usr\lib\swift -L %SDKROOT%\usr\lib\swift\windows -O -g -debug-info-format=codeview

%SWIFTC% -emit-library %SWIFTFLAGS% sr13225.swift -o sr13225.dll
