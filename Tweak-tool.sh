#!/bin/bash
clear
echo "[EN] Please select a language"
echo "[RU] Пожалуйста выберите язык"
echo
echo
echo "1 - English"
echo "2 - Русский"
echo
read -p "[1 , 2]: " language
case $language in
1)    clear
   echo "Activating script"
   sleep 2
   clear
   sleep 2
   echo "Welcome to Droidian Tweak Tool Alpha"
   echo "A program that will simplify the addition of tweaks to the system"
   echo " "
   echo " "
   echo "Attention! This program is a prototype, so it may have bugs, as well as there is no GUI yet"
   echo " "
   sleep 3
   read -p "Press any button to continue" enterprogramm
   clear
   sleep 1
   echo "Script created by Seiwer-Tail (@MEDICBLYAT)"
   echo " "
   echo "Translated into English using Google Translate technologies"
   sleep 5
   echo " "
   echo "Select the tweak you want to apply:"
   echo " "
   echo " "
   echo "1) Installing the program for creating screenshots"
   echo "2) Bash related modifications"
   echo "3) Fix and prepare flatpak for the first job"
   echo "4) Set your own ringtone for calls"
   echo " "
   read -p "Your choice:" selecttweak
   case $selecttweak in
   1) clear
      echo "Your choice will install the screenshot software."
      read -p " If you are ready to install press enter" enterprogramm
	  sleep 3
	  sudo apt install grim libnotify-bin yad
      wget https://repo.mobian-project.org/pool/main/w/wl-screenshot/wl-screenshot_0.2.1_all.deb
	  sudo dpkg -i wl-screenshot_0.2.1_all.deb
	  rm wl-screenshot_0.2.1_all.deb
	  sleep 3
	  clear
	  echo "Installation completed! Choose what to do next"
	  echo " "
	  echo "1) Close script"
	  echo "2) Reload script"
	  echo " "
	  read -p "Answer: " reload
	  case $reload in
	  1) exit
	  ;;
	  2) sleep 2
	     clear
		 sleep 2
		 echo "Reload Script"
		 sleep 1
		 clear
		 echo "Reload Script."
		 sleep 1
		 clear
		 echo "Reload Script.."
		 sleep 1
		 clear
		 echo "Reload Script..."
		 sleep 1
		 clear
		 sleep 2
		 sudo bash Tweak-tool.sh
	  ;;
	  esac
    ;;
  2) clear
     echo "Select the bash modification you want to apply"
     echo " "
     echo "1) Do not let the system sleep when activating sudo commands (for example, sudo apt dist-upgrade)"
	 echo "2) [GLOBAL TWEEK BASH] Display battery charge in the terminal"
	 echo "3) Display neofetch in the terminal correctly when starting the terminal"
	 echo " "
	 read -p "Your choice: " bashmodificator
	 case $bashmodificator in
	 1) clear
	    echo "alias sudo='gnome-session-inhibit sudo'" >> .bashrc
		sleep 3
		echo "Tweak successfully applied!"
		echo "Restart the terminal now to apply the tweak"
	    sleep 10
		clear
		exit
	;;
	2) echo "ATTENTION! This is a global .bashrc tweak"
	   echo "During installation, your bashrc file will be replaced with a modified one"
	   echo "If any tweaks for bash have been applied before, they will be lost and you will have to reapply them"
	   echo " "
	   read -p "Press enter to start installation" bashrcmodificate
	   sleep 3
	   clear
	   sleep 2
	   rm .bashrc
	   wget -O .bashrc https://mark.nl.tab.digital/s/EtQrwbHEo2oTEWo/download
	   clear
	   sleep 2
	   echo "You need to restart the terminal to apply the changes"
	   sleep 10
	   exit
	   
	   ;;
	3) clear
	   sudo apt install neofetch
	   echo "neofetch --ascii_distro Debian" >> .bashrc
	   clear
	   sleep 3
       echo "Tweak successfully applied!"
	   echo "Restart the terminal now to apply the tweak"
	   sleep 10
	   clear
	   exit
	   ;;
	*) echo "What? Wrong Answer"
       sleep 3
       clear
       xdg-open https://i.imgur.com/dLfPsSw.png
       clear
       sleep 2
       echo "Reload Script"
       sleep 1
       sudo bash Tweak-tool.sh
     ;;

esac
  ;;
  3) clear 
     sudo dpkg-statoverride --quiet --remove /usr/bin/bwrap
     sudo dpkg-statoverride --update --add root root 4755 /usr/bin/bwrap
	 flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	 echo "Successfully completed! The script will now be restarted"
	 sleep 3
	 clear
	 sleep 2
     echo "Reload Script"
	 sleep 1
	 clear
	 echo "Reload Script."
	 sleep 1
	 clear
	 echo "Reload Script.."
	 sleep 1
	 clear
	 echo "Reload Script..."
	 sleep 1
	 clear
	 sleep 2
	 sudo bash Tweak-tool.sh
	 ;;
	 
   4) clear
      echo "To set a ringtone please place your melody in flac format in the /home/droidian/Music directory"
	  echo "It is also necessary to rename the file to input so that the result is input.flac"
	  echo "How these actions will be performed press enter"
	  read -p " " startchangemelody
	  clear
	  sudo mkdir -p /usr/local/share/sounds/freedesktop/stereo
      sudo cp /usr/share/sounds/freedesktop/index.theme /usr/local/share/sounds/freedesktop
	  cd /home/droidian/Music/
      # Convert if necessary.
	  sudo apt install -y ffmpeg
      ffmpeg -i input.flac -c:a libvorbis phone-incoming-call.oga
      # Copy your ringtone.
      sudo cp phone-incoming-call.oga /usr/local/share/sounds/freedesktop/stereo
      # Clean cache.
      rm ~/.cache/event-sound-cache.tdb.*
	  echo "Change completed successfully"
	  echo "Reload script"
	  sleep 4
	  cd ~/
	  sudo bash Tweak-tool.sh
	esac
;;
2) 
   clear
   echo "Activating script and loading launguage package"
   sleep 2
   clear
   sleep 2
   echo "Приветствуем вас в Droidian Tweak Tool"
   echo "в программе что позволит упростить добавление твиков в систему"
   echo " "
   echo " "
   echo "Внимание! Данная программа является прототипом поэтому в ней могут быть баги, а так же пока что нету GUI"
   echo " "
   sleep 3
   read -p "Нажмите любую кнопку для продолжения" enterprogramm
   clear
   sleep 1
   echo "Скрипт создан Seiwer-Tail (@MEDICBLYAT)"
   sleep 5
   echo " "
   echo "Выберите твик:"
   echo " "
   echo " "
   echo "1) Установка программы для создания скриншотов"
   echo "2) Модификации связанные с bash"
   echo "3) Пофиксить и подготовить flatpak к первой работе"
   echo "4) Установить свой рингтон для звонка"
   echo " "
   read -p "Выш выбор: " selecttweak
   case $selecttweak in
   1) clear
      echo "Ваш выбор установит программу для создания скриншотов."
      read -p " Если вы готовы к установке нажмите enter" enterprogramm
	  sleep 3
	  sudo apt install grim libnotify-bin yad
      wget https://repo.mobian-project.org/pool/main/w/wl-screenshot/wl-screenshot_0.2.1_all.deb
	  sudo dpkg -i wl-screenshot_0.2.1_all.deb
	  rm wl-screenshot_0.2.1_all.deb
	  sleep 3
	  clear
	  echo "Установка завершена! Выберите что делать дальше"
	  echo " "
	  echo "1) Закрыть скрипт"
	  echo "2) Перезапустить скрипт"
	  echo " "
	  read -p "Выбор: " reload
	  case $reload in
	  1) exit
	  ;;
	  2) sleep 2
	     clear
		 sleep 2
		 echo "Reload Script"
		 sleep 1
		 clear
		 echo "Reload Script."
		 sleep 1
		 clear
		 echo "Reload Script.."
		 sleep 1
		 clear
		 echo "Reload Script..."
		 sleep 1
		 clear
		 sleep 2
		 sudo bash Tweak-tool.sh
	  ;;
	  esac
    ;;
  2) clear
     echo "Выберите модификацию bash которую вы хотите применить"
     echo " "
     echo "1) Не давать системе засыпать при активации sudo команд (например sudo apt dist-upgrade)"
	 echo "2) [ГЛОБАЛЬНЫЙ ТВИК BASH] Отображать в терминале заряд аккумулятора"
	 echo "3) Отображать neofetch в терминале правильно при старте терминала"
	 echo " "
	 read -p "Ваш выбор: " bashmodificator
	 case $bashmodificator in
	 1) clear
	    echo "alias sudo='gnome-session-inhibit sudo'" >> .bashrc
		sleep 3
		echo "Твик успешно применен!"
		echo "Перезапустите теперь терминал для применения твика"
	    sleep 10
		clear
		exit
	;;
	2) echo "ВНИМАНИЕ! Это глобальный твик .bashrc"
	   echo "Во время установки ваш файл bashrc будет заменен на модифицированный"
	   echo "Если до этого были применены какие либо твики для bash они будут потеряны и вам придется заново их применить"
	   echo " "
	   read -p "Нажмите enter для начала установки" bashrcmodificate
	   sleep 3
	   clear
	   sleep 2
	   rm .bashrc
	   wget -O .bashrc https://mark.nl.tab.digital/s/EtQrwbHEo2oTEWo/download
	   clear
	   sleep 2
	   echo "Необходимо перезапустить терминал для применения изменений"
	   sleep 10
	   exit
	   
	   ;;
	3) clear
	   sudo apt install neofetch
	   echo "neofetch --ascii_distro Debian" >> .bashrc
	   clear
	   sleep 3
	   echo "Твик успешно применен!"
	   echo "Перезапустите теперь терминал для применения твика"
	   sleep 10
	   clear
	   exit
	   ;;
	*) echo "What? Wrong Answer"
       sleep 3
       clear
       xdg-open https://i.imgur.com/dLfPsSw.png
       clear
       sleep 2
       echo "Reload Script"
       sleep 1
       sudo bash Tweak-tool.sh
     ;;

esac
  ;;
  3) clear 
     sudo dpkg-statoverride --quiet --remove /usr/bin/bwrap
     sudo dpkg-statoverride --update --add root root 4755 /usr/bin/bwrap
	 flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	 echo "Успешно выполнено! Сейчас будет выполнен перезапуск скрипта"
	 sleep 3
	 clear
	 sleep 2
     echo "Reload Script"
	 sleep 1
	 clear
	 echo "Reload Script."
	 sleep 1
	 clear
	 echo "Reload Script.."
	 sleep 1
	 clear
	 echo "Reload Script..."
	 sleep 1
	 clear
	 sleep 2
	 sudo bash Tweak-tool.sh
	 ;;
	 
   4) clear
      echo "Для установки звонка пожалуйста поместите вашу мелодию в формате flac в директорию /home/droidian/Music"
	  echo "Так же необходимо переименовать файл в input что бы в итоге получилось input.flac"
	  echo "Как данные действия будут выполнены нажмите enter"
	  read -p " " startchangemelody
	  clear
	  sudo mkdir -p /usr/local/share/sounds/freedesktop/stereo
      sudo cp /usr/share/sounds/freedesktop/index.theme /usr/local/share/sounds/freedesktop
	  cd /home/droidian/Music/
      # Convert if necessary.
	  sudo apt install -y ffmpeg
      ffmpeg -i input.flac -c:a libvorbis phone-incoming-call.oga
      # Copy your ringtone.
      sudo cp phone-incoming-call.oga /usr/local/share/sounds/freedesktop/stereo
      # Clean cache.
      rm ~/.cache/event-sound-cache.tdb.*
	  echo "Смена выполнена успешно"
	  echo "Перезапуск скрипта"
	  sleep 4
	  cd ~/
	  sudo bash Tweak-tool.sh
	esac
;;
[Gg]achi) clear
          sleep 3
          echo "DUNGEON MASTER CODE ACTIVATED!"
          xdg-open https://www.youtube.com/watch?v=smjEsrPSsmE
;;
*) echo "What? Wrong Answer"
   sleep 3
   clear
   xdg-open https://i.imgur.com/dLfPsSw.png
   clear
   sleep 2
   echo "Reload Script"
   sleep 1
   sudo bash Tweak-tool.sh
;;
esac