# simple-prime-switcher
This is a simple nvidia prime profile switcher. It has no affiliation to nvidia. 

Switch between different GPU profiles, integrated GPU, On-Demand or dedicated GPU without ruining your day. The script is made for Linux distributions running Gnome and the proprietary GPU driver from nvidia. It was created because NVIDIA X Server Settings has a bug where it is impossible to select the integrated GPU after you have selected On-Demand or dedicated GPU from the GUI

## Working
Ubuntu Desktop 22.XX

![Options for profiles](https://github.com/rasmusjs/simple-prime-switcher/blob/main/options.png)

## Requirements 
Proprietary drivers from NVIDEA for your system, GTK+ (default in Ubuntu Desktop)

## Installation
1. Download the [script](https://github.com/rasmusjs/simple-prime-switcher/blob/main/Prime%20Profile%20switcher.sh) 
2. Make the script executable ``chmod u+x Prime%20Profile%20switcher.sh``
4. Run the script

Or run:

``wget https://raw.githubusercontent.com/rasmusjs/simple-prime-switcher/main/Prime%20Profile%20switcher.sh; sudo chmod u+x 'Prime Profile switcher.sh'; ./'Prime Profile switcher.sh'``
