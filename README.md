# Lab :: Hello World :: Swift Application

[![License](https://img.shields.io/github/license/odaceo/lab-hello-world-swift.svg)](LICENSE)
[![Build Status](https://travis-ci.org/odaceo/lab-hello-world-swift.svg)](https://travis-ci.org/odaceo/lab-hello-world-swift)

## Description

A simple Swift application on Linux.

## Prerequisites

[Vagrant](https://www.vagrantup.com/downloads.html) must be installed on your 
computer to mount the workbench for this project.

Open a Terminal and run the following commands:

```shell
vagrant up
vagrant ssh
cd /vagrant
```

## Building the application

The build command creates a standalone binary file.

``` shell
swift build --configuration release
```

## Running the application

To launch the application use the following command:

``` shell
.build/release/hello Odaceo
```

## Reporting Issues

Issues can be reported at [https://github.com/odaceo/lab-hello-world-swift/issues](https://github.com/odaceo/lab-hello-world-swift/issues)

## Source code

The source code is available at [https://github.com/odaceo/lab-hello-world-swift](https://github.com/odaceo/lab-hello-world-swift)

## License

All the source code is distributed under [ASL 2.0](LICENSE).

## Copyright

© 2015 [Odaceo](http://odaceo.ch). All rights reserved.
