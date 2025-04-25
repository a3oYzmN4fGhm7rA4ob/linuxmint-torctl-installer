# Remember to run this script as superuser (sudo)
# This script is intended for use on Linux Mint.
# Instructions: run this script with "sudo bash install_torctl.sh" in the directory where the script is stored.
echo "Script: Starting!"
cd ~
apt install git
apt install tor
apt install tor macchanger secure-delete
echo "Script: Installed requirements."
git clone https://github.com/BlackArch/torctl
echo "Script: Repo cloned, cd-ing into torctl and beginning file movements."
cd torctl
sudo mv service/* /etc/systemd/system/
sudo mv bash-completion/torctl /usr/share/bash-completion/completions/torctl
sed -i 's/start_service iptables//' torctl
sed -i 's/TOR_UID="tor"/TOR_UID="debian-tor"/' torctl
sudo mv torctl /usr/local/bin/torctl
echo "Script: torctl installed, cleaning up."
cd .. && rm -rf torctl/
echo "Script: Complete. You can run torctl now!"



