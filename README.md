# Swift Issues
We are using latest development versions of Swift Toolchain and SDK for Windows.
As platform support is not ready yet, bugs and regressions are our fellow companions.
This collection of code samples is to keep track on issues we found, reported and keeping eye on.

## Usage
Most of samples provided with `build.cmd` batch file to aid in issue demonstration.
Additional instructions/steps may be available in README.md of corresponding issue.

## Requirements
Swift Toolchain and SDK for Windows x64.

## Tracked Issues
- Linker fails on specific code with CodeView debug info enabled\
[![SR-10671](https://img.shields.io/jira/issue/SR-10671?baseUrl=https%3A%2F%2Fbugs.swift.org&color=success&style=flat-square)](https://bugs.swift.org/browse/SR-10671)
- Windows, compiling w/o speculative devirtualization produces unstable binaries\
[![SR-12179](https://img.shields.io/jira/issue/SR-12179?baseUrl=https%3A%2F%2Fbugs.swift.org&color=success&style=flat-square)](https://bugs.swift.org/browse/SR-12179) [![](https://img.shields.io/github/pulls/detail/state/apple/swift-corelibs-foundation/2748?style=flat-square)](https://github.com/apple/swift-corelibs-foundation/pull/2748)
- SIL Verification failure with @objc protocol on Windows\
[![SR-13087](https://img.shields.io/jira/issue/SR-13087?baseUrl=https%3A%2F%2Fbugs.swift.org&color=critical&style=flat-square)](https://bugs.swift.org/browse/SR-13087)
- Slow compilation with GuaranteedARCOpts\
[![SR-13205](https://img.shields.io/jira/issue/SR-13205?baseUrl=https%3A%2F%2Fbugs.swift.org&color=critical&style=flat-square)](https://bugs.swift.org/browse/SR-13205)
- Linker fails with CodeView debug info enabled\
[![SR-13225](https://img.shields.io/jira/issue/SR-13225?baseUrl=https%3A%2F%2Fbugs.swift.org&color=critical&style=flat-square)](https://bugs.swift.org/browse/SR-13225)

## Untracked Issues
- Broken synthesis of the CodingKeys\
[![](https://img.shields.io/github/pulls/detail/state/apple/swift/32824?style=flat-square)](https://github.com/apple/swift/pull/32824)
