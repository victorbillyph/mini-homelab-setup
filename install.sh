clear
echo Instalador Basico KIT
sleep 3
echo Insira A Senha Para Iniciar
sudo apt update
clear
echo Termos
echo esse produto e open-source Com a GPL-3.0 Que Permite Uso Comercial E Distribuir e Modificar Se For Modificar Tem Que Colocar Os Direitos Do Autor Original.      Victorbillyph
echo Aceitar
echo 1 Sim Concordo com Os Termos
echo 2 Nâo Concordo Sair
read teclado
case $teclado in
2)
 echo Saindo
 sleep 3
 clear
 exit
 ;;

1)
#Nada Pra Rodar O Comando
;;
esac
clear
echo Iniciando...
sleep 3
clear
echo 1 - Tailscale
echo 2 - CasaOS
echo 3 - mtools
echo 4 - net-tools
echo 5 - Verificar Updates
echo X - Sair
echo Insira Seu Numero Para Instalar:
read teclado
case $teclado in
1)
echo Instalando Tailscale
curl -fsSL https://tailscale.com/install.sh | sh
echo Abra O Link Abaixo No Navegador Para Configurar
sudo tailscale up
echo Instalaçâo Feita
exit
;;

2)
echo Instalando CasaOS
curl -fsSL https://get.casaos.io | sudo bash
echo Instalaçâo Feita
exit
;;

3)
echo Instalando M-Tools
sudo apt install mtools
clear
echo instalaçâo feita
exit
;;

4)
echo Instalando net-tools
sudo apt install net-tools
clear
echo instalaçâo feita
exit
;;

5)
echo Verificando Updates
sudo apt update
echo Pronto Saindo
exit
;;

X)
echo Saindo
exit
;;
esac
