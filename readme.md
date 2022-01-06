# Autoclicker
![](https://user-images.githubusercontent.com/91064070/148111392-f6937c4d-6966-4c69-a313-b4050f94fa4c.png)

A shell script that uses [xdotool](https://manpages.ubuntu.com/manpages/trusty/man1/xdotool.1.html) to simulate mouse activity. It can be useful to automatise some tasks or to stay logged in on your computer or communication applications (avoiding getting AFK).

It stimulates a mouse click every 0.5s so be careful where your mouse pointer is when you begin the session. This can be easily changed by modifying line #28 ```sleep 0.5```.

When closing it, the program will display the time elapsed since the beginning of the session.

### Instructions

* Install xdotool with ```sudo apt install xdotool```

* Then execute the program with ```./autoclicker.sh```

* Press any key to begin a session and any key to stop it
