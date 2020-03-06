# Find The Internet Password

### Description

Yeah I know, you can easily check the password by going through the Network and Sharing Center control panel, but what if you could find the password of the Wi-Fi you're currently connected with just a really simple shortcut in your CMD? Well, now your dreams can become true because this script will help your little brain remember the password within milliseconds just by pressing ```Ctrl+P```!

_Disclaimer:_ Like I've already said, this script will return the password to the *current connected Wi-Fi*. If you want to find the password to other Wi-Fis you previously connected, then read the _"Modifying the code to your liking"_ section.

### Alternate Description

You're at a Café and this really attractive person walks up to you and with the prettiest smile you've ever seen in your entire life, asks you a simple question:

_"Hi, do you know the Wi-Fi password?"_

You almost didn't catch what they were trying to ask you because you got lost in a daydream of living a happily ever after life with them, maybe adopting a dog (or an elephant, I don't judge) after a couple of months, going on a trip to the southeast Asia, building this great relationship with their parents and being invited to their family thanksgiving every year because they all love you so much and you picture yourself finally buying *that* ring-- Well, you get the picture. You reply:

_"W-Well, y-yes. It's..."_

You momentarily freeze. _"WHAT'S THE PASSWORD?!"_ you scream internally. This is a really traditional Café, there's none of that crap of generating a temporary password after logging into their system, hell, you don't need to log in at all! It's a plain text password, you just forgot what it is.

The person is still there, looking at you like their life depends on your answer. You keep on stuttering trying your hardest to remember the password. When you finally give up on your memory and open the control panel, the person says:

_"Oh-Nevermind. I'll ask the cashier, thank you!"_

And just like that your dreams shatter like that pretty vase your grandma had before you knocked it over while running aimlessly around her house when you were just a dumb kid.

## TL;DR

Title.

## Be advised

If your Windows is not set to English, then this code will not work since the CMD it's translated to whatever language you chose when you first set up your windows. You'll have to run the commands separately to find which keywords your CMD actually uses.

## Explaining the code

This one is a little trickier since we need to first check what SSID the computer is actually connected to, and then echoing it's password, but I'll try my best to explain.

First of all, we create a ```for``` statement that'll "split" the return of the ```netsh wlan show interfaces ^| find "SSSID"``` command and get what's on the right of the character ```:```, which in this case is the name of the SSID.

Then, with the SSID in hands, it'll ```netsh wlan show profile <SSID> key=clear | find "Key"```, which will finally return the password of the Wi-Fi you're currently connected to.

```autohotkeys
#IfWinActive, ahk_class ConsoleWindowClass
^p::
SendInput for /f "tokens=2 delims=:" %%i in ('netsh wlan show interfaces ^| find "SSID"') do netsh wlan show profile %%i key=clear | find "Key"{Enter}
return
```

### Modifying the code to your liking]

If you want to find the password to other Wi-Fi you've connected before, then just replace the ```SendInput``` line with:

```autohotkeys
SendInput netsh wlan show profile "<SSID>" key=clear | find "Key"{Enter}
```

Though I don't think there's a practical use to that, since you can always just copy and paste this command directly into CMD without having to use a shorcut.
