# Flip

#### Flip coins in your command line

![](./assets/carbon.svg)

Flip was designed to help you make them difficult decisions quickly right from your command line and was initially built to answer the common whats for dinner conundrum. I ate dinner late that night after learning the swift argument parser library, all in the name of bringing a small lightweight coin flip CLI tool to the open source community.

## Usage

#### Flip a coin

Invoke the `flip` command to flip coins in your command line.

``` shell
$ flip
```

#### Flip multiple coins

Use the `--coins or -c` argument and pass a number to flip serval coins in one command.

``` shell
$ flip -c 3
```

#### Disable animated and colored output

Need to disable the colored or animated output for instant coin flips, piping output to different commands or easy scraping of outputted text? Use the `--disable or -d` argument.

``` shell
$ flip --disable
```

#### Accessing help

If you need help use the built in help screen by passing the `--help or -h` argument.

``` shell
$ flip -h
```

## Install & Updating

Currently we suggest installing from source, this will require [**swift**](https://swift.org) as a make dependency. Its suggested that you checkout a tagged version when installing or updating for stability, use the `git tag` command to see all tags or see the [GitHub Releases](https://github.com/dominicegginton/flip/releases) page. I am working on bringing flip to major package managers soon such as **homebrew**, the **AUR** and **APT**.

### Install from source

``` shell
$ git clone https://github.com/dominicegginton/flip
$ cd flip
$ git checkout {version number}
$ sudo make install
```

### Updating from source

``` shell
$ git pull
$ git checkout {version number}
$ sudo make install
```

## Contributing
You are welcome to contribute by submitting a new bug report and features request on te [GitHub Issue tracker](https://github.com/dominicegginton/flip/issues/new) and don't hesitate to submit a pull request I am always open for new contributes to hop on board.