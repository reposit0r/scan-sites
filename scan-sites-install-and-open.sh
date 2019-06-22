# !/bin/bash
#scan-sites-install-and-open.sh
#CYBERCAT made this
#>_<

mv scan-sites.sh .. 
mv scan-sites-install-and-open.sh ..
cd .. 
rm - rf scan-sites
apt update -y && apt upgrade -y 
apt install git 
apt install php
apt install python2
mkdir termuxguide-scripts
mv scan-sites.sh termuxguide-scripts 
cd termuxguide-scripts
mkdir termuxguide-scripts-base
cd termuxguide-scripts-base
mkdir scan-sites
cd scan-sites
git clone https://github.com/Tuhinshubhra/RED_HAWK
git clone https://github.com/Gameye98/OWScan
git clone https://github.com/UltimateHackers/ReconDog
cd ReconDog
chmod +x *
cd .. 
cd ..
sh scan-sites.sh
print Все выполнено успешно! Вы можете еще раз запускать scan-sites.sh по ветке 
pwd
cd .. 
rm -rf scan-sites-install-and-open.sh
