#!/bin/bash
source=$1 #в переменную source засовываем первый параметр скрипта
dest=$2 #в переменную dest засовываем второй параметр скрипта
dig=$(dig $2 +short | tail -n1)
if [[ "$source" = "$dig" ]] # в ковычках указываем имена переменных для сравнения. -eq - логическое сравнение обозначающие "равны"
then # если они действительно равны, то
echo "1" #выводим сообщение об ошибке, т.к. $source и $dest у нас равны
#echo '$dig'
#echo $dig
exit 1 # выходим с ошибкой (1 - код ошибки)
else # если же они не равны
#cp $source $dest # то выполняем команду cp: копируем источник в приемник
echo "0"
fi #обозначаем окончание условия.
