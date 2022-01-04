# Autoclicker
![](https://user-images.githubusercontent.com/91064070/148105124-8de21dc0-8bfc-4cea-815b-50ca2cee771c.png)

A shell script that uses [xdotool](https://manpages.ubuntu.com/manpages/trusty/man1/xdotool.1.html) to simulate mouse activity to stay logged on your computer or communication applications (avoiding getting AFK).

It stimulates a mouse click every 0.5s so be careful where your mouse pointer is when you begin the session. This can be easily changed by modifying line #26 ```sleep 0.5```.

When closing it, the program will display the time elapsed since the beginning of the session.

Install xdotool with ```sudo apt install xdotool``` then execute the program with ```./autoclicker.sh```. Press any key to begin session and any key to stop it.
