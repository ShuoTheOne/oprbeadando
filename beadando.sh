#!/bin/bash
clear

echo  "Etterem V1.0" ; sleep 2 ;
echo  "Made by: Vasas Csaba" ; sleep 2 ;
clear

while getopts 'fn' nem
do
    case $nem in
    f)echo  "Neme: Ferfi" ;;
    n)echo  "Neme: No" ;;
esac
done

echo -n "Adja meg a nevet: "
read n
clear

echo 
    echo "		Koszontjuk ettermunkben, $n!"
echo


echo -n "Adja meg az eletkorat: "
read e


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

echo
echo  "	Kivalo valasztas, $n!"

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

else
    echo

fi
    echo
    echo "			Koszonjuk rendeleset!"
    echo "		Rendeleserol emailben ertesitjuk, amint elkeszult!"
    echo

    #insert email kuldo progi here es stickrajz



                    




		       #innentol jon a gyerek, copyright v.cs.





else 
    echo
    echo "	18 even aluli vagy, ezert gyermek asztalt kapsz."

echo "	         	        "
echo "		       	       "
echo "		    \      o   "
echo "		 |-----|  /_\ "
echo "		 |     |  | |   "
echo "		 |     |  - -  "

echo 
echo  "Kerjuk valasszon a foetelek kozul: (1-5)"

echo "	/	|----------------------|	"
echo "	/	| 1)	Fozelek	       |	"
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
    1) echo "Fozelek"  ;;
    2) echo "Husleves"  ;;
    3) echo "Columbo" ;;
    4) echo "Nokedli" ;;
    5) echo "Gyumolcsleves" ;;
esac

echo
echo  "Kituno valasztas, $n!"

echo

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

echo

echo "Szeretnel desszertet? (igen / nem)"
read kerdes


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
esac

else

    echo 

fi
    echo
    echo "			Koszonjuk rendelesed!"
    echo "		Rendelesedrol emailben ertesitunk, amint elkeszult!"
    echo
    #insert email kuldo progi here es stick rajz






fi







