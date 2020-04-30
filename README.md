Why? [LiveComment](https://www.npmjs.com/package/livecomment) is powerful tool, but not user-friendly and we're need a new way to install software

What is [LiveComment](https://www.npmjs.com/package/livecomment)?
[LiveComment](https://www.npmjs.com/package/livecomment) is code navigation & architecture tool for developer notes and reactive like Meteor for install, configure and run server or client side configuation of different plugins. LiveComment support JS natively and can support any language, system or package manager


# livecomment-cli
LiveComment cli tools

### System requirements

- bash (Linux shell, Mac, Windows)

### Install Script

To **install** LiveComment, you should run the livecomment-cli script. To do that, you may either download and run the script manually, or use the following cURL or Wget command:
```sh
curl -o- https://raw.githubusercontent.com/web3cryptowallet/livecomment-cli/master/bin/livecomment-cli.sh | bash
```
```sh
wget -qO- https://raw.githubusercontent.com/web3cryptowallet/livecomment-cli/master/bin/livecomment-cli.sh | bash
```

Running either of the above commands downloads a script and runs it. The script installs and configure bootstrap components if needed:

- nvm.sh
- node v12.16.2

## Directory structure

```
bin/

  livecomment-cli - CLI tool. use it to setup livecomment project, 
                    install or delete plugins (dev, test it)

doc/                Documents dir

plugins/            Plugins dir

```


# Hackaton Architecture
![Hackaton Architecture 1.0](https://raw.githubusercontent.com/web3cryptowallet/livecomment-cli/master/doc/LiveComment%20Architecture%20Schema%201-0.png)
