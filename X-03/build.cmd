setlocal enabledelayedexpansion

set SWIFTC=%SystemDrive%\Library\Developer\Toolchains\unknown-Asserts-development.xctoolchain\usr\bin\swiftc.exe
set SDKROOT=%SystemDrive%\Library\Developer\Platforms\Windows.platform\Developer\SDKs\Windows.sdk
set SWIFTFLAGS=-sdk %SDKROOT% -I %SDKROOT%\usr\lib\swift -L %SDKROOT%\usr\lib\swift\windows -O

%SWIFTC% -emit-executable %SWIFTFLAGS% x03.swift -o x03.exe

set PATH=%PATH%;%SDKROOT%\usr\bin;%SystemDrive%\Library\icu-67\usr\bin

x03.exe

endlocal