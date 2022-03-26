# Flip

**Flip** was designed to help you make difficult decisions quickly, it's simple but effective, just **flip** coins directly in your command line. Initially built to answer the common what's for dinner conundrum, but now serves as a small project for learning about binary distribution for different platforms and package management systems.

## Documentation

``` shell
USAGE: flip [--coins <coins>] [--disable]

OPTIONS:
  -c, --coins <coins>     The number of coins to flip. 
  -d, --disable           Disable animated and colored output. 
  -h, --help              Show help information.
```

## Install

### AUR (Arch User Repository)

**Flip** is provided by both [flip-bin]() and [flip-git]() in the AUR for Arch based linux distributions.

### Homebrew

``` shell
brew install dominicegginton/formulae/flip
```

### From source

Firstly before installing **Flip** from source please check the required build dependencies:
- [Git](https://git-scm.com/)
- [Swift programming language](https://swift.org/)
- [Make](https://www.gnu.org/software/make/)

To download the source code simply clone the repository using Git and use Make to build and install **Flip**:
``` shell
$ git clone https://github.com/dominicegginton/flip
$ cd flip
$ sudo make install
```

## Contributing
You are welcome to contribute by submitting a new bug report and features request on te [GitHub Issue tracker](https://github.com/dominicegginton/flip/issues/new) and don't hesitate to submit a pull request I am always open for new contributes to hop on board.