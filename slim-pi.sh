pkgs="
geany
sonic-pi
wolfram-engine
timidity
smartsim
sense-hat
sense-emu-tools
scratch
minecraft-pi python-minecraftpi
penguinspuzzle
nuscratch
nodered
netsurf-gtk
epiphany-browser
galculator
dillo
bluej
greenfoot
xpdf
claws-mail
oracle-java8-jdk
openjdk-7-jre
oracle-java7-jdk
openjdk-8-jre
libreoffice*
"

# Remove packages
for i in $pkgs; do
	sudo apt-get -y remove --purge $i
done


# Remove automatically installed dependency packages
sudo apt-get -y autoremove

# Remove all packages marked rc (thanks @symm)
dpkg --list |grep "^rc" | cut -d " " -f 3 | xargs dpkg --purge 