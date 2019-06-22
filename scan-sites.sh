#!/bin/bash
#scan-sites.sh
#CYBERCAT made this
#>_<
echo "Выберите утилиту для запуска:"
echo "1) Запуск программы RED_HAWK"
echo "2) Запуск программы OWScan"
echo "3) Запуск программы ReconDog"
echo "4) Выход"
read doing 

case $doing in
1)
cd termuxguide-scripts-base
cd scan-sites
cd RED_HAWK
php rhawk.php
;;
2)
cd termuxguide-scripts-base
cd scan-sites
cd OWScan
php owscan.php
;;
3)
cd termuxguide-scripts-base
cd scan-sites
cd ReconDog
python2 dog.py
;;
4)
exit 0
;;
*) read doing

esac 
