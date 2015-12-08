# swift-x11-example

A simple example that shows how to write a X11 app on Linux in Swift using the new package manager

## Requirements

- Swift needs to be installed on your Linux system. The binary distribution from Swift.org is enough, you don't need to build it yourself.
- The `swift` command should also be somewhere in your `$PATH`

## Running

To use this, simply check out the repo (preferrably on Linux) and do the following in the folder:

`swift build`

This will clone the CX11.swift package and build the binary

Run it via:

`.build/debug/swift-x11-example`

This will execute the binary, and a small X11 Window should appear on your desktop:

![Ubuntu Screenshot](/screenshot.png?raw=true "Ubuntu Screenshot")


