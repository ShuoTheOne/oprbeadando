#!/bin/bash
clear

echo  "Etterem V1.0" ; sleep 1 ;
echo  "Made by: Vasas Csaba" ; sleep 1 ;


while getopts 'fn' nem
do
    case $nem in
    f)echo  "Neme: Ferfi" ;;
    n)echo  "Neme: No" ;;
esac
done

echo -n "Adja meg a nevet: "
read n



echo -n "Adja meg az eletkorat: "
read e

echo -n "Adja meg az email cimet: "
read email

clear
echo 
echo "	Koszontjuk ettermunkben, $n"
echo



sleep 2;


#if ciklus kezdete, itt kezdodik a felnott if

if [ "$e" -gt 18 ] ; then
    echo 
    echo "	Maga felnott, ezert felnott asztalt kap."

echo "	         	        "
echo "		           o    "
echo "		    \     /_\   "
echo "		 |-----|  | |   "
echo "		 |     |  | |   "
echo "		 |     |  - -  "


sleep 2;
echo 
echo  "Kerjuk valasszon a foetelek kozul: (1-5)"

echo "	/	|----------------------|	/"
echo "	/	| 1)	Ragu	       |	/"
echo "	/	| 2)	Husleves       |	/"
echo "	/	| 3)	Columbo        |	/"
echo "	/	| 4)	Paprikas       |	/"
echo "	/	| 5)	Gyumolcsleves  |	/"
echo "	/	|______________________|	/"


read foetel

while [ "$foetel" -gt 5 ]
do  
echo  "Adjon meg 1-5ig szamot!"
read foetel
done



echo -n "		A valasztott foetele: "
case $foetel in    
    1) echo "Ragu"  ;;
    2) echo "Husleves"  ;;
    3) echo "Columbo" ;;
    4) echo "Paprikas" ;;
    5) echo "Gyumolcsleves" ;;
esac
sleep 2;
echo
echo  "	Kivalo valasztas, $n!"
sleep 2;
clear
echo

echo "Kerjuk valasszon egy italt az etele melle: (1-6)"

echo "	/	|-------------------|		/"
echo "	/	| 1)	Gyumolcsle  |		/"
echo "	/	| 2)	Sor  	    |		/"
echo "	/	| 3)	Tequila     |		/"
echo "	/	| 4)	Bor 	    |		/"
echo "	/	| 5)	Columbina   |		/"
echo "	/	| 6)	Pine Colada |		/"
echo "	/	|___________________|		/"

echo

read ital

while [ "$ital" -gt 6 ]
do  
echo  "Adjon meg 1-6ig szamot!"
read ital
done

echo -n "		A valasztott itala: "
case $ital in    
    1) echo "Gyumolcsle"  ;;
    2) echo "Sor"  ;;
    3) echo "Tequila" ;;
    4) echo "Bor" ;;
    5) echo "Columbina" ;;
    6) echo "Pine colada" ;;
esac
sleep 2;
clear
echo
echo "Szeretne desszertet? (igen / nem)"
read kerdes

echo
if [ "$kerdes" = "igen" ]; then
    echo "Rendben, ezesetben kerjuk valassza ki desszertjet! (1-5)"

echo "	/	|--------------------|		/"
echo "	/	| 1)	Pite         |		/"
echo "	/	| 2)	Somloi       |		/"
echo "	/	| 3)	Palacsinta   |		/"
echo "	/	| 4)	Fagylalt     |		/"
echo "	/	| 5)	Columbo kope |		/"
echo "	/	|____________________|		/"

echo

read desszert

while [ "$desszert" -gt 5 ]
do  
echo  "Adjon meg 1-5ig szamot!"
read desszert
done

echo -n "		A valasztott desszertje: "
case $desszert in    
    1) echo "Pite"  ;;
    2) echo "Somloi"  ;;
    3) echo "Palacsinta" ;;
    4) echo "Fagylalt" ;;
    5) echo "Columbo kope" ;;
esac
sleep 2;
else
    echo

fi
clear
 # rendeles veglegesites


echo 
echo "			Rendeles veglegesitese: "
echo

echo -n "			Foetel: "
case $foetel in    
    1) echo "Ragu"  ;;
    2) echo "Husleves"  ;;
    3) echo "Columbo" ;;
    4) echo "Paprikas" ;;
    5) echo "Gyumolcsleves" ;;
esac
sleep 1;

echo -n "			Ital: "
case $ital in    
    1) echo "Gyumolcsle"  ;;
    2) echo "Sor"  ;;
    3) echo "Tequila" ;;
    4) echo "Bor" ;;
    5) echo "Columbina" ;;
    6) echo "Pine colada" ;;
esac
sleep 1;



if [ "$kerdes" = "igen" ]; then
echo -n "			Desszert: "
case $desszert in    
    1) echo "Pite"  ;;
    2) echo "Somloi"  ;;
    3) echo "Palacsinta" ;;
    4) echo "Fagylalt" ;;
    5) echo "Columbo kope" ;;
esac

else
echo

fi

sleep 1;
echo
echo "Meg szeretne rendelni a kivalasztott menut? (igen/nem)"
read veglegesit

if [ "$veglegesit" = "igen" ]; then
echo
echo "Koszonjuk rendeleset!"
sleep 2;
echo "Rendeleserol emailben ertesitjuk, amint elkeszult!"
sleep 1;
echo

#itt kezdodik a rendelesmodositas
else
echo
while [ "$veglegesit" = "nem" ]
do  
clear
echo
echo  "Min szeretne valtoztatni? (Foetel / Ital / Desszert)"
echo "	/	|--------------------|		/"
echo "	/	| 	Foetel       |		/"
echo "	/	| 	Ital         |		/"
echo "	/	| 	Desszert     |		/"
echo "	/	|____________________|		/"
 
read valtoztat
if [ "$valtoztat" = "Foetel" ]; then
clear
echo
echo -n "			Jelenlegi kivalasztott foetele: "
case $foetel in    
    1) echo "Ragu"  ;;
    2) echo "Husleves"  ;;
    3) echo "Columbo" ;;
    4) echo "Paprikas" ;;
    5) echo "Gyumolcsleves" ;;
esac
sleep 2;
echo "Mire szeretne valtoztatni a foetelet? (1-5)"

echo "	/	|----------------------|	/"
echo "	/	| 1)	Ragu	       |	/"
echo "	/	| 2)	Husleves       |	/"
echo "	/	| 3)	Columbo        |	/"
echo "	/	| 4)	Paprikas       |	/"
echo "	/	| 5)	Gyumolcsleves  |	/"
echo "	/	|______________________|	/"

read foetel

while [ "$foetel" -gt 5 ]
do  
echo  "Adjon meg 1-5ig szamot!"
read foetel
done

else
echo 
fi
 
if [ "$valtoztat" = "Ital" ]; then
clear
echo
echo -n "			Jelenlegi kivalasztott itala: "
case $ital in    
    1) echo "Gyumolcsle"  ;;
    2) echo "Sor"  ;;
    3) echo "Tequila" ;;
    4) echo "Bor" ;;
    5) echo "Columbina" ;;
    6) echo "Pine colada" ;;
esac
sleep 2;
echo "Mire szeretne valtoztatni az italat? (1-6)"

echo "	/	|-------------------|		/"
echo "	/	| 1)	Gyumolcsle  |		/"
echo "	/	| 2)	Sor  	    |		/"
echo "	/	| 3)	Tequila     |		/"
echo "	/	| 4)	Bor 	    |		/"
echo "	/	| 5)	Columbina   |		/"
echo "	/	| 6)	Pine Colada |		/"
echo "	/	|___________________|		/"

read ital

while [ "$ital" -gt 6 ]
do  
echo  "Adjon meg 1-6ig szamot!"
read ital
done

fi


if [ "$valtoztat" = "Desszert" ]; then
clear
echo
echo -n "			Jelenlegi kivalasztott desszertje: "
case $desszert in    
    1) echo "Pite"  ;;
    2) echo "Somloi"  ;;
    3) echo "Palacsinta" ;;
    4) echo "Fagylalt" ;;
    5) echo "Columbo kope" ;;
esac
sleep 2;
echo "Mire szeretne valtoztatni a desszertjet? (1-5)"

echo "	/	|--------------------|		/"
echo "	/	| 1)	Pite         |		/"
echo "	/	| 2)	Somloi       |		/"
echo "	/	| 3)	Palacsinta   |		/"
echo "	/	| 4)	Fagylalt     |		/"
echo "	/	| 5)	Columbo kope |		/"
echo "	/	|____________________|		/"

read desszert

while [ "$desszert" -gt 5 ]
do  
echo  "Adjon meg 1-5ig szamot!"
read desszert
done

fi

sleep 1;
clear
echo
echo "			Rendeles veglegesitese: (igen/nem)"
echo

echo -n "			Foetel: "
case $foetel in    
    1) echo "Ragu"  ;;
    2) echo "Husleves"  ;;
    3) echo "Columbo" ;;
    4) echo "Paprikas" ;;
    5) echo "Gyumolcsleves" ;;
esac
sleep 1;

echo -n "			Ital: "
case $ital in    
    1) echo "Gyumolcsle"  ;;
    2) echo "Sor"  ;;
    3) echo "Tequila" ;;
    4) echo "Bor" ;;
    5) echo "Columbina" ;;
    6) echo "Pine colada" ;;
esac
sleep 1;



if [ "$kerdes" = "igen" ]; then
echo -n "			Desszert: "
case $desszert in    
    1) echo "Pite"  ;;
    2) echo "Somloi"  ;;
    3) echo "Palacsinta" ;;
    4) echo "Fagylalt" ;;
    5) echo "Columbo kope" ;;
esac
else
 echo
fi


read veglegesit
done

fi
clear
echo
echo "			Az On rendelese: "
echo

echo -n "			Foetel: "
case $foetel in    
    1) echo "Ragu"  ;;
    2) echo "Husleves"  ;;
    3) echo "Columbo" ;;
    4) echo "Paprikas" ;;
    5) echo "Gyumolcsleves" ;;
esac
sleep 1;

echo -n "			Ital: "
case $ital in    
    1) echo "Gyumolcsle"  ;;
    2) echo "Sor"  ;;
    3) echo "Tequila" ;;
    4) echo "Bor" ;;
    5) echo "Columbina" ;;
    6) echo "Pine colada" ;;
esac
sleep 1;



if [ "$kerdes" = "igen" ]; then
echo -n "			Desszert: "
case $desszert in    
    1) echo "Pite"  ;;
    2) echo "Somloi"  ;;
    3) echo "Palacsinta" ;;
    4) echo "Fagylalt" ;;
    5) echo "Columbo kope" ;;
esac

else
echo

fi
sleep 1;
echo
echo "		Rendeleserol az ertesitest emailben fogunk kuldeni amint kesz lesz!"
echo "		Koszonjuk, hogy minket valasztott!"    

#insert email kuldo progi here es stickrajz

sendmail "$email" < email.txt

                    




		       #innentol jon a gyerek





else 
    echo
    echo "	18 even aluli vagy, ezert gyermek asztalt kapsz."
echo "	         	        "
echo "		       	       "
echo "		    \      o   "
echo "		 |-----|  /_\ "
echo "		 |     |  | |   "
echo "		 |     |  - -  "
sleep 1;
echo 
echo  "Kerjuk valasszon a foetelek kozul: (1-5)"

echo "	/	|----------------------|	"
echo "	/	| 1)	Dinofalatkak   |	"
echo "	/	| 2)	Husleves       |	"
echo "	/	| 3)	Columbo        |	"
echo "	/	| 4)	Nokedli	       |	"
echo "	/	| 5)	Gyumolcsleves  |	"
echo "	/	|______________________|	"


read foetel
while [ "$foetel" -gt 5 ]
do  
echo  "Adj meg 1-5 kozotti szamot!"
read foetel
done


echo -n "		A valasztott foeteled: "
case $foetel in    
    1) echo "Dinofalatkak"  ;;
    2) echo "Husleves"  ;;
    3) echo "Columbo" ;;
    4) echo "Nokedli" ;;
    5) echo "Gyumolcsleves" ;;
esac

echo; sleep 2;
echo  "Kituno valasztas, $n!"; sleep 1;
echo
clear
echo "Kerjuk valassz egy italt az etele melle: (1-6)"

echo "		|--------------------|"
echo "		| 1)	Kubu	     |"
echo "		| 2)	Cappy  	     |"
echo "		| 3)	Lipton Tea   |"
echo "		| 4)	Nestea 	     |"
echo "		| 5)	Columbina jr |"
echo "		| 6)	Almale       | "
echo "		|____________________|"

echo

read ital

while [ "$ital" -gt 6 ]
do  
echo  "		Adj meg 1-6ig szamot!"
read ital
done

echo -n "		A valasztott italod: "
case $ital in    
    1) echo "Kubu"  ;;
    2) echo "Cappy"  ;;
    3) echo "Lipton Tea" ;;
    4) echo "Nestea" ;;
    5) echo "Columbina JR" ;;
    6) echo "Almale" ;;
esac

echo; sleep 2;
clear
echo "Szeretnel desszertet? (igen / nem)"
read kerdes
clear

echo
if [ "$kerdes" = "igen" ]; then
    echo "Rendben, ezesetben kerjuk valaszd ki desszerted! (1-5)"

echo "		|--------------------|"
echo "		| 1)	Pite         |"
echo "		| 2)	Somloi       |"
echo "		| 3)	Palacsinta   |"
echo "		| 4)	Fagylalt     |"
echo "		| 5)	Columbo Kope |"
echo "		|____________________|"

echo

read desszert

while [ "$desszert" -gt 5 ]
do  
echo  "Adj meg 1-5ig szamot!"
read desszert
done

echo -n "		A valasztott desszerted: "
case $desszert in    
    1) echo "Pite"  ;;
    2) echo "Somloi"  ;;
    3) echo "Palacsinta" ;;
    4) echo "Fagylalt" ;;
    5) echo "Columbo kope" ;;
esac; sleep 2;

else
echo

fi

clear
 # rendeles veglegesites


echo 
echo "			Rendeles veglegesitese: "
echo

echo -n "			Foetel: "
case $foetel in    
    1) echo "Dinofalatkak"  ;;
    2) echo "Husleves"  ;;
    3) echo "Columbo" ;;
    4) echo "Nokedli" ;;
    5) echo "Gyumolcsleves" ;;
esac
sleep 1;

echo -n "			Ital: "
case $ital in    
    1) echo "Kubu"  ;;
    2) echo "Cappy"  ;;
    3) echo "Lipton Tea" ;;
    4) echo "Nestea" ;;
    5) echo "Columbina JR" ;;
    6) echo "Almale" ;;
esac
sleep 1;



if [ "$kerdes" = "igen" ]; then
echo -n "			Desszert: "
case $desszert in    
    1) echo "Pite"  ;;
    2) echo "Somloi"  ;;
    3) echo "Palacsinta" ;;
    4) echo "Fagylalt" ;;
    5) echo "Columbo kope" ;;
esac

else
echo

fi

sleep 1;
echo
echo "Meg szeretned rendelni a kivalasztott menut? (igen/nem)"
read veglegesit

if [ "$veglegesit" = "igen" ]; then
echo
echo "Koszonjuk rendelesed!"
sleep 2;
echo "Rendelesedrol emailben ertesitunk, amint elkeszult!"
sleep 1;
echo

else
echo
 #megirni a menu valtoztato dolgot meg ide


fi




fi







