-Turn Super Sonic requires 2,4,5,6 in the Level Select Sound Test and pressing B+A or C+A at roughly the same time from the ground. 

-Sonic and Tails both have no roll-lock. Obj Status check changed to 3 which is seemingly not used so it always passes

-Super Sonic's pause in the air is removed

-The title screen now lasts a more appropriate length.

-Act Clear jingle is there at the end of the act. (The implementation of this change did break zones from Mushroom Valley to Doomsday however)

-Sega Screen palette has been fixed.

-Debug is turned off by default except for the pause function, The Sonic 2 options let you select character as well as listen to the sound test.

-Knuckles is "playable", although he's mostly just Sonic. A palette change is made, but it doesn't work underwater or with super forms. Obj_Player_Selected is set to 2 so his signpost works.

-Due to Obj_Player_Selected, his rock breaking ability does work, although the collision is iffy. Try it in AIZ Act 2 and run into that wall at the start

-UP UP, DOWN DOWN, UP UP for Level select and Debug Mode.

-When Level Select is enabled, A+Start for Sonic&Tails, B for Sonic Alone, C for Tails Alone, and sound test code 1,3,5,7 for Knuckles.

-Proper explosion sound.

-EndPanel now loads based off Obj_Player_Selected, so now Sonic Alone, Tails Alone, and Knuckles are fixed

-Robotnik in LBZ2 takes 8 hits instead of 1.

For the changes go to the commits section

Note that in some instances when code is removed it is to "make room" for different code. I can't seem to get it to work in those instances without the game freaking out by breaking all the music.

Sonic Retro and TCRF for source of some changes
https://forums.sonicretro.org/threads/transform-at-will-in-sonic-2.28959/
https://info.sonicretro.org/SCHG_How-to:Fix_bugs_relating_to_Super_Sonic
https://tcrf.net/Proto:Sonic_the_Hedgehog_3#Sega_Screen
Plus the original disassembly was MASSIVE help
