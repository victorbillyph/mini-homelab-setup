clear
echo Instalador
sleep 3
echo Altualizando Sistema...
sudo apt update
clear
echo Aviso Do Dono:
echo Bem-Vindo ao Instalador Ele Esta Em Beta, Somente Tesado Em Ubuntu 20.04 e superior
echo Comando?
echo 1 Rodar O Instalador
echo 2 Sair
read teclado
case $teclado in
2)
 echo Exit...
 sleep
 clear
 exit
 ;;

1)
#nada foi Colocado Para Continuar o Instalador
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
