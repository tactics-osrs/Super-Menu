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
9. Ping Tool
10. Kill a Process
11. Change IP Address
12. File Explorer
13. Calculator
0. Turn OFF Computer
A. Abort Shutdowm



![Screenshot 2023-12-29 152737](https://github.com/tactics-osrs/Batch-Menu/assets/76490725/ccb33b4b-534a-4fb4-a266-6129ca858d5f)

PREVIEW



....More to come

UPDATES: Added 30 second timers, and warnings on "Shutdown" commands, 

Added a new option "C" which can be input within the 30 seconds to cancel any restart/shutdown within the 30 seconds.

Added Echos that will display what the file is executing upon entering a choice. (I.E. "30 seconds before the UEFI Firmware Settings will be entered."). 

Added a Kill a Process option (10.) That will display all of your current running processes and then ask the user to input which process they want to kill.
(using "Processname" format. NOT Case sensitive NO extension needed i.e. ".EXE")

Added File Explorer option (12.) which will open your file explorer. (wow!)

Added Calculator option (13.) Opens calculator.

Added a Change IP Address option (11.) that will prompt the user to enter yes/no to changing their IP. If no, a message will display "Returning without changing IP address." if yes, the batch script will utilize
netsh to rewew your STATIC IP. If you are not running this batch file as administrator you will recieve the following message. 
"Changing IP address...  
The requested operation requiires elevation (Run as Administrator)."


IMPORTANT NOTE:  please be aware that the command to enter UEFI firmware settings (shutdown /r /fw /t 0) may not work on all systems. It depends on the system’s firmware and whether it supports this feature. If it doesn’t work, you’ll need to enter the UEFI firmware settings manually, usually by pressing a specific key (like F2, F10, or Del) during system startup. You can remove the option entirely. If you need assistance in doing so please feel free make a pull request and id be glad to help. (Removing line 6 & 14 in the code will remove this option entirely.)


DISCLAIMER: This batch file was written for personal utility and for educational/experience purposes only. Do not mis-use this file. I do not hold any responsibility of the use/misuse of this script. 

The code is open-source, of course! As it's a .bat file, please save it as such if you are going to copy the raw code to your notepad.
