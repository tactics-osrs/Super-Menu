# Batch-Menu
Powerful .bat menu that gives you the options to enter the following options. (enter their corrosponding numbers, not their actions, followed by enter.)

Displays Date/Time

1. Reset Computer
2. Enter UEFI firmware settings
3. Sign out
4. Sleep
5. Open Task Manager
6. Network and Internet Setting
7. Volume Mixer
8. Open Control Panel
9. Ping Google
10. Kill a Process
0. Turn OFF Computer
C. Cancel Shutdowm

   ![image](https://github.com/tactics-osrs/Batch-Menu/assets/76490725/7d7f8570-80b5-4050-a561-64be2ad3dba3)



....More to come

UPDATES: Added 30 second timers, and warnings on "Shutdown" commands, as well as a new option "C" which can be input within the 30 seconds to cancel any restart/shutdown within the 30 seconds.
Added Echos that will display what the file is executing upon entering a choice. (I.E. "30 seconds before the UEFI Firmware Settings will be entered."). Added a Kill a Process choice (10.) That will display
all of your current running processes and then ask the user to input which process they want to kill, using "Process.extention" format(case sensitive).


IMPORTANT NOTE:  please be aware that the command to enter UEFI firmware settings (shutdown /r /fw /t 0) may not work on all systems. It depends on the system’s firmware and whether it supports this feature. If it doesn’t work, you’ll need to enter the UEFI firmware settings manually, usually by pressing a specific key (like F2, F10, or Del) during system startup. You can remove the option entirely. If you need assistance in doing so please feel free make a pull request and id be glad to help. (Removing line 6 & 14 in the code will remove this option entirely.)


DISCLAIMER: This batch file was written for personal utility and for educational/experience purposes only. Do not mis-use this file. I do not hold any responsibility of the use/misuse of this script. 

The code is open-source, of course! As it's a .bat file, please save it as such if you are going to copy the raw code to your notepad.
