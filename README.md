# Stacc CLI - next

This repository is being used to hold the Stacc CLI [releases](https://github.com/stacc/cli-next/releases).

## Installation

* [Homebrew](#using-homebrew-macos--linux)
* [Scoop](#using-scoop-windows)
* [From terminal](#from-terminal)
* [Direct download](#direct-download)

### Using homebrew (MacOS / Linux)

> NOTE: The name of the tap has changed. If you still have the old one, run `brew untap stacc/stacc-CLI` before doing the steps below.

First add the repository with

```
brew tap stacc/tap
```

Then install the CLI with

```
brew install stacc-next
```

### Using scoop (Windows)

First add the repository with

```
scoop bucket add stacc https://github.com/stacc/cli-next
```

Then install the CLI with

```
scoop install stacc
```

### From terminal

MacOS and Linux users

```
curl -s https://raw.githubusercontent.com/stacc/cli-next/main/install.sh | bash -s --
```

Windows users

```
curl -LSs https://raw.githubusercontent.com/stacc/cli-next/main/install.bat -o %TEMP%\stacc-install.bat && CMD /C %TEMP%\stacc-install.bat && del %TEMP%\stacc-install.bat
```

### Direct download

Download the latest release [here](https://github.com/stacc/cli-next/releases/latest).
