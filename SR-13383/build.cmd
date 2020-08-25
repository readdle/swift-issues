setlocal enabledelayedexpansion

set SWIFTC=%SystemDrive%\Library\Developer\Toolchains\unknown-Asserts-development.xctoolchain\usr\bin\swiftc.exe
set SDKROOT=%SystemDrive%\Library\Developer\Platforms\Windows.platform\Developer\SDKs\Windows.sdk
set XCTESTROOT=%SystemDrive%\Library\Developer\Platforms\Windows.platform\Developer\Library\XCTest-development
set SWIFTFLAGS=-sdk %SDKROOT% -I %SDKROOT%\usr\lib\swift -I %XCTESTROOT%\usr\lib\swift\windows\x86_64 -L %SDKROOT%\usr\lib\swift\windows -L %XCTESTROOT%\usr\lib\swift\windows -O

%SWIFTC% -emit-executable %SWIFTFLAGS% sr13383.swift -o sr13383.exe
if errorlevel 1 goto :eof

set PATH=%PATH%;%SystemDrive%\Library\Developer\Platforms\Windows.platform\Developer\SDKs\Windows.sdk\usr\bin;%SystemDrive%\Library\Developer\Platforms\Windows.platform\Developer\Library\XCTest-development\usr\bin;%SystemDrive%\Library\icu-67\usr\bin
sr13383.exe

endlocal
