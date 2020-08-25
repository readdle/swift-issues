setlocal enabledelayedexpansion

set SWIFTC=%SystemDrive%\Library\Developer\Toolchains\unknown-Asserts-development.xctoolchain\usr\bin\swiftc.exe
set SDKROOT=%SystemDrive%\Library\Developer\Platforms\Windows.platform\Developer\SDKs\Windows.sdk
set SWIFTFLAGS=-sdk %SDKROOT% -I %SDKROOT%\usr\lib\swift -L %SDKROOT%\usr\lib\swift\windows -O -enable-testing

%SWIFTC% -emit-library %SWIFTFLAGS% x04.swift -o x04.dll

endlocal
