# !/bin/bash
#scan-sites-install-and-open.sh
#CYBERCAT made this
#>_<

echo "Подождите пожалуйста... Проверка интернета" 
wget -q http://google.com
if [[ $? -eq 0 ]]; then
echo "Интернет соединение хорошее. Начинаю установку... "
apt update -y && apt upgrade -y 
apt install git 
apt install php
apt install python2
mkdir termuxguide-scripts
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
git clone https://github.com/reposit0r/scan-sites.git
cd scan-sites
mv scan-sites.sh ..
cd .. 
rm - rf scan-sites
sh scan-sites.sh
print Все выполнено успешно! Вы можете еще раз запускать scan-sites.sh по ветке 
pwd
cd .. 
rm -rf scan-sites-install-and-open.sh
else
echo "Остуствие интернета или плохое подключение. Повторите попытку позже" 
fi
