# linuxmint-torctl-installer
A bash script to easily install the [torctl](https://github.com/BlackArch/torctl) tool on [Linux Mint](https://github.com/linuxmint). 

> It should work on other Debian/Ubuntu distributions, but I have not tested.

### Please Note
This script will install tor and git via apt, if you do not have them already.
## Usage
1. Clone the script to your desired location. (or download it manually)

   *If you download it manually instead of using git, know that the script will install git for you.*
```
git clone https://github.com/a3oYzmN4fGhm7rA4ob/linuxmint-torctl-installer
```
2. Run the script (as superuser) with bash, in the directory where it's located.
   
  *The script will automatically move to the correct directories while running, so it does not matter where you run it from in most cases.*
```
sudo bash install_torctl.sh
```

### Alternatively
Even if you don't have git installed, you can run this single command that will do everything at once.
```
sudo apt install git && git clone https://github.com/a3oYzmN4fGhm7rA4ob/linuxmint-torctl-installer && cd linuxmint-torctl-installer && sudo bash install_torctl.sh && cd ..
```

