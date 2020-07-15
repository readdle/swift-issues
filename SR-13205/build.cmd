setlocal

set SWIFTC=%SystemDrive%\Library\Developer\Toolchains\unknown-Asserts-development.xctoolchain\usr\bin\swiftc.exe
set SDKROOT=%SystemDrive%\Library\Developer\Platforms\Windows.platform\Developer\SDKs\Windows.sdk
set SWIFTFLAGS=-sdk %SDKROOT% -I %SDKROOT%\usr\lib\swift -L %SDKROOT%\usr\lib\swift\windows

rem set SWIFTOPTFLAGS=-Xllvm -sil-disable-pass=GuaranteedARCOpts

time /t
%SWIFTC% -emit-library %SWIFTFLAGS% %SWIFTOPTFLAGS% sr13205.swift -o sr13205.dll
time /t

endlocal