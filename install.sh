clear
echo Installer
sleep 3
echo Update System...
sudo apt update
clear
echo Confirm The Installer
echo This Installer Is a Project
echo Command?
echo 1 Run The Installer
echo 2 Exit
read teclado
case $teclado in
2)
 echo Exit...
 sleep
 clear
 exit
 ;;

1)
#Nada Pra Rodar O Comando
;;
esac
clear
echo Starting...
sleep 3
clear
echo 1 - Tailscale
echo 2 - CasaOS
echo 3 - mtools
echo 4 - net-tools
echo 5 - Verificar Updates
echo X - Sair
echo Command:
read teclado
case $teclado in
1)
echo Install Tailscale...
curl -fsSL https://tailscale.com/install.sh | sh
echo Executing Command For Configure The Program
sudo tailscale up
echo Install Done, Exit...
exit
;;

2)
echo Install CasaOS...
curl -fsSL https://get.casaos.io | sudo bash
echo Done, Exit...
exit
;;

3)
echo Install M-Tools...
sudo apt install mtools
clear
echo done, Exit...
exit
;;

4)
echo Install net-tools...
sudo apt install net-tools
clear
echo done, exit...
exit
;;

5)
echo Update...
sudo apt update
echo Done, Exit...
exit
;;

X)
echo exit...
exit
;;
esac
