# Clear CMD Shortcut

### Description
Have you ever wondered why Windows CMD never had a command shortcut to clear all the gibberish that you wound up typing in it? Well, you can always use ```cls``` to clear your prompt of course, but let's face it: if we were issuing commands in Bash, we would just hit that sweet ```Ctrl+l``` and be done with this minor inconvience, right? No need to type ```clear``` or anything in that case.

If you're mildly annoyed by the fact that CMD doesn't have a built-in shortcut like Bash does for clearing the command prompt, then you're in luck! You just need to  download the ```cls-auto.ahk``` file and double click it (that is, if you have *AutoHotKey* installed on your PC). Fire up your CMD in your favorite way (mine's through the Run dialog box), type some random hardcore commands like the pro programmer you are or just keep holding the ```Enter``` key like a cannibal just ate your brains until you get annoyed with all those words in your CMD screen.

Breathe in, now hit ```Ctrl+l```.

Now your CMD is as clean as when it was initialized.

### Alternate Description

You know those times when you're struggling to find the correct way to use a command and you just keep re-typing the same command with different flags or words since you can't figure out what is wrong?

Then one wild ideia suddenly hits you: _'What if I just read the manual for this command?'_ you think to yourself. You praise your own intelligence for a brief period of time then shortly afterwards you hit that ```REG QUERY /?``` into the CMD and... _'Damn.'_ it's only thought that crosses your mind. You start the painful process of reading flag by flag what each one of them does, and you start to lose hope that you'll ever find that one information stored in the registry that you want so bad. You lost all your confidence by now, you feel like your so-called "IQ" is so high that it loops over and hits negative digits, and you think _'Maybe I should check StackOverflow or watch a tutorial on the internet'_, but you can't and, let's be honest, you won't, since you're a snobbish programmer and you want to find your own solutions. Hours pass, you try every flag, every path in the registry and _still_ you're unable of finding what you seek. You wipe the tears off your face: _'I guess it's time.'_ Your hands are shaking, your head is aching and your heart is filled with anger, disappointment and embarassment. You look down, then, very gently you press ```Ctrl+l```.

You're still miserable, but at least now you're at peace.

## Explaining the Code

Pretty straightforward, it couldn't get any simpler than this:

```autohotkey
#IfWinActive, ahk_class ConsoleWindowClass ; checks if the active window is a CMD/Powershell
; In AutoHotKey terms, the character '^' means 'Control', and 'l' means... Well, l. So,
; when the user presses Ctrl+l, it'll execute the next lines of code until a return is found.
^l::
  SendInput {Esc}cls{Enter} ; type "cls" and enter the command!
return
```
