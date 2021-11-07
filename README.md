These are the instructions to enable a Mac computer as Gitlab Runner used for CI/CD of Flutter projects.

### 1. Install Homebrew

Hombrew is a package manager for Mac OS. In order to install it, run from terminal this command which may request your password:

```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

After the command has completed, you will be asked to run two commands in the terminal to add Hombrew to your `PATH` .

```
$ echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>/path/to/.zprofile
$ eval "$(/opt/homebrew/bin/brew shellenv)"
```

After you've installed Homebrew, check that Homebrew is installed properly.

```
$ brew doctor
```

### 2. Install Flutter SDK

After Homebrew has been installed you can run the following script on terminal. 

```jsx
$ ./installFlutterSdk.sh
```

### 3. iOS setup

### Install Xcode Command Line Tools

To develop Flutter apps for iOS, you need a Mac with Xcode installed.

1. Install the latest stable version of Xcode (using [web download](https://developer.apple.com/xcode/) or the [Mac App Store](https://itunes.apple.com/us/app/xcode/id497799835))
2. Run the following script on terminal

```jsx
$ ./installCommandLineTools.sh
```
