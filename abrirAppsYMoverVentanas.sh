#!/bin/sh
# Script to launch and move apps when the system boots
ESCRITORIO_CHROME=0
ESCRITORIO_CHROME_BETA=1
ESCRITORIO_THUNAR=3
ESCRITORIO_TELEGRAM=4
ESCRITORIO_VSCODE=11

notify-send "Script de inicio" "Iniciando entorno de trabajo..." -t 5000

#Thunar
TEXTO_APP="Thunar"
ORDEN_APP="thunar"
ESCRITORIO=$ESCRITORIO_THUNAR

$($ORDEN_APP)  & PID_APP="$!"
echo -n "PID de "$TEXTO_APP": "
echo $PID_APP
while [ $(wmctrl -lpx | grep "$TEXTO_APP" | wc -l) != 1 ]
do
   echo "Esperando a "$TEXTO_APP
   sleep 0.5
done 
ID_VENTANA="$(wmctrl -lpx | grep "$TEXTO_APP" | cut -d " " -f1)"
echo -n "ID de ventana de "$TEXTO_APP": "
echo $ID_VENTANA
wmctrl -i -r $ID_VENTANA -t $ESCRITORIO
wmctrl -i -r $ID_VENTANA -e '0,0,0,1590,1746'


#Google-Chrome
TEXTO_APP="Google-chrome  miguel-pc Marcadores"
ORDEN_APP="/usr/bin/google-chrome-stable"
ESCRITORIO=$ESCRITORIO_CHROME

$($ORDEN_APP)  & PID_APP="$!"
echo -n "PID de "$TEXTO_APP": "
echo $PID_APP
while [ $(wmctrl -lpx | grep "$TEXTO_APP" | wc -l) != 1 ]
do
   echo "Esperando a "$TEXTO_APP
   sleep 0.5
done 
ID_VENTANA="$(wmctrl -lpx | grep "$TEXTO_APP" | cut -d " " -f1)"
echo -n "ID de ventana de "$TEXTO_APP": "
echo $ID_VENTANA
wmctrl -i -r $ID_VENTANA -t $ESCRITORIO
wmctrl -i -r $ID_VENTANA -e '0,0,0,1590,1746'


#Telegram
TEXTO_APP="Telegram"
ORDEN_APP="/usr/bin/telegram-desktop"
ESCRITORIO=$ESCRITORIO_TELEGRAM

$($ORDEN_APP)  & PID_APP="$!"
echo -n "PID de "$TEXTO_APP": "
echo $PID_APP
while [ $(wmctrl -lpx | grep "$TEXTO_APP" | wc -l) != 1 ]
do
   echo "Esperando a "$TEXTO_APP
   sleep 0.5
done 
ID_VENTANA="$(wmctrl -lpx | grep "$TEXTO_APP" | cut -d " " -f1)"
echo -n "ID de ventana de "$TEXTO_APP": "
echo $ID_VENTANA
wmctrl -i -r $ID_VENTANA -t $ESCRITORIO
wmctrl -i -r $ID_VENTANA -e '0,0,0,1590,1746'


#Google-Chrome beta
TEXTO_APP="google-chrome-beta"
ORDEN_APP="/usr/bin/google-chrome-beta"
ESCRITORIO=$ESCRITORIO_CHROME_BETA

$($ORDEN_APP)  & PID_APP="$!"
echo -n "PID de "$TEXTO_APP": "
echo $PID_APP
while [ $(wmctrl -lpx | grep "$TEXTO_APP" | wc -l) != 1 ]
do
   echo "Esperando a "$TEXTO_APP
   sleep 0.5
done 
ID_VENTANA="$(wmctrl -lpx | grep "$TEXTO_APP" | cut -d " " -f1)"
echo -n "ID de ventana de "$TEXTO_APP": "
echo $ID_VENTANA
wmctrl -i -r $ID_VENTANA -t $ESCRITORIO
wmctrl -i -r $ID_VENTANA -e '0,0,0,1590,1746'


#Visual Studio Code
TEXTO_APP="code"
ORDEN_APP="code"
ESCRITORIO=$ESCRITORIO_VSCODE

$($ORDEN_APP)  & PID_APP="$!"
echo -n "PID de "$TEXTO_APP": "
echo $PID_APP
while [ $(wmctrl -lpx | grep "$TEXTO_APP" | wc -l) != 1 ]
do
   echo "Esperando a "$TEXTO_APP
   sleep 0.5
done 
ID_VENTANA="$(wmctrl -lpx | grep "$TEXTO_APP" | cut -d " " -f1)"
echo -n "ID de ventana de "$TEXTO_APP": "
echo $ID_VENTANA
wmctrl -i -r $ID_VENTANA -t $ESCRITORIO
wmctrl -i -r $ID_VENTANA -e '0,0,0,1590,1746'
