#!/bin/bash
#Автоматическое осуществление снимков экрана каждые 5 секунд
for((i=0; i<20; i++)); 
do  
screengrab -m & 
sleep 5;  
done 
killall screengrab
