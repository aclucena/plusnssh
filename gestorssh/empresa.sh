#!/bin/bash
clear
fun_bar () {
comando[0]="$1"
comando[1]="$2"
 (
[[ -e $HOME/fim ]] && rm $HOME/fim
${comando[0]} -y > /dev/null 2>&1
${comando[1]} -y > /dev/null 2>&1
touch $HOME/fim
 ) > /dev/null 2>&1 &
 tput civis
echo -ne "  \033[1;33mAGUARDE \033[1;37m- \033[1;33m["
while true; do
   for((i=0; i<18; i++)); do
   echo -ne "\033[1;31m#"
   sleep 0.1s
   done
   [[ -e $HOME/fim ]] && rm $HOME/fim && break
   echo -e "\033[1;33m]"
   sleep 1s
   tput cuu1
   tput dl1
   echo -ne "  \033[1;33mAGUARDE \033[1;37m- \033[1;33m["
done
echo -e "\033[1;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
tput cnorm
}
echo ""
clear
#
clear
echo -e "\E[44;1;37m    NOME DA LOGO     \E[0m"
echo ""
echo -e "\E[44;1;37m    Aqui é definido o nome da logo     \E[0m"
echo ""
echo -e "                              \033[1;31mBy @nandoslayer\033[1;36m"
echo ""
echo ""
echo -ne "\033[1;32m INFORME O NOME DA EMPRESA\033[1;37m: "; read empresa
echo -e "   \033[1;32mOK\033[1;37m"
echo ""
clear
#
cd
sed -i "s;EMPRESA;$empresa;g" /var/www/html/home.php > /dev/null 2>&1
sed -i "s;EMPRESA;$empresa;g" /var/www/html/index.php > /dev/null 2>&1
sed -i "s;EMPRESA;$empresa;g" /var/www/html/login.php > /dev/null 2>&1
sed -i "s;EMPRESA;$empresa;g" /var/www/html/admin/home.php > /dev/null 2>&1
sed -i "s;EMPRESA;$empresa;g" /var/www/html/admin/index.php > /dev/null 2>&1
sed -i "s;EMPRESA;$empresa;g" /var/www/html/admin/login.php > /dev/null 2>&1
echo ""
echo -e "\033[1;31m REINICIANDO A VPS EM 10 SEGUNDOS...\033[0m"
sleep 10
echo -e "\033[1;31mREINICIANDO...\033[0m"
shutdown -r now
cat /dev/null > ~/.bash_history && history -c
rm /root/install.sh > /dev/null 2>&1
rm /root/restbanco.sh > /dev/null 2>&1
rm /root/painelweb.sh > /dev/null 2>&1
rm /root/empresa.sh > /dev/null 2>&1
exit