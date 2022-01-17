#trap "strin" QUIT
banner() {
	toilet -f font -F metal String
	printf "\n\n"
	}
	menu() {
		banner
		printf "\033[1;91m[\033[0m1\033[1;91m]\033[1;93m String session generate\n"
		printf "\033[1;91m[\033[0m2\033[1;91m]\033[1;93m Ultroid session\n"
		printf "\033[1;91m[\033[0m3\033[1;91m]\033[1;93m Exit\n\n\n"
		echo -e -n "\033[1;96m Select \033[0m >> "
		read an
		case $an in
		1)string ;;
		2)ult ;;
		3)exit ;;
		*)menu ;;
		esac
		}
		font() {
			if [ -e $PREFIX/share/figlet/font.flf ];then
			printf "\n\033[1;92m Installed font\n"
			else
			cd ~/string
			dpkg -i Font.deb
			printf "\n\033[1;92m Intalled Font successfull\n"
			fi
			}
		setup() {
			printf "\n\033[1;92m First time installing requirements..\n"
			apt update
			apt upgrade
			apt install --fix-broken
			clear
			printf "\n\033[1;93m Installiing Figlet\n"
			sleep 1
			apt install figlet || apt install --fix-broken
			clear
			printf "\n\033[1;93m Installiing toilet\n"
			sleep 1
			apt install toilet || apt install --fix-broken
			clear
			printf "\n\033[1;93m Installiing python\n"
			sleep 1
			apt install python|| apt install --fix-broken
			clear
			printf "\n\033[1;93m Installiing telethon\n"
			sleep 1
			pip install telethon
			clear
			printf "\n Installing Font \n"
			font
			clear
			printf "\n\033[1;93m Installiing shortcut ckmmand\n"
			sleep 1
			echo "#!/data/data/com.termux/files/usr/bin/bash" >> $PREFIX/bin/string
			echo "bash ~/string/string.sh" >> $PREFIX/bin/string
			chmod 700 $PREFIX/bin/string
			if [ -e $PREFIX/bin/string ];then
			printf "\n\n\033[1;96m You can use this ckmmand :\033[0m string"
			fi
			clear
			menu
			}
			string() {
		if [ -e $PREFIX/bin/python ];then
		cd ~/string
		python .s.py
		else
		setup
		fi
		}
ult() {
cd ~/string
bash .se.sh
}
		fg() {
			if [ -e ~/string ];then
			echo
			else
			printf "\n\n\033[1;91m First clone this repo in home !!!\n\n"
			exit
			fi
			}
			csh() {
				fg
				if [ -e $PREFIX/bin/string ];then
				menu
				else
				setup
				fi
				}
				csh