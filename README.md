-Turn Super Sonic requires 2,4,5,6 in the Level Select Sound Test and pressing A/B/C twice in the air with 50 rings. 

-Ring throwing available as Super Sonic only

-Tails can use debug mode (but not as powerful as Sonic's, can't be used during death)

-Sonic and Tails both have no roll-lock. Obj Status check changed to 3 which is seemingly not used so it always passes

-The title screen now lasts a more appropriate length.

-Sonic's surfboard is enabled during gameplay

-Act Clear jingle is there at the end of the act. (Level_Load_Music only goes up to Launch Base Act 2, Mushroom Valley onwards are broken.)

-Act and Zone Transitions work in most situations (basic fade to black rather than cutscene)

-Fixed act transition music so it will correctly go to Act 2's sound during transition (MGz, Iz, etc)

-Sega Screen palette has been fixed. (SEGA_Bg.pal at offset 40 in hex editor is Sonic's SEGA palette)

-Debug is turned off by default except for the pause function. The S2 options let you select character and use sound test

-Knuckles is "playable", although he's mostly just Sonic. A palette change is made, but it doesn't work underwater or with super forms. Some minor properties remain, like running into walls

-UP UP, DOWN DOWN, UP UP for Level select and Debug Mode.

-Start for Sonic&Tails, A+Start for Sonic Alone, B+Start for Tails Alone, C+Start for Knuckles.

-Proper sound IDs for certain objects. (Explosions, AIz bridge, etc)

-EndPanel now loads based off Obj_Player_Selected, so now Sonic Alone, Tails Alone, and Knuckles are fixed

-Robotnik in LBZ2 takes 8 hits instead of 1.

-Hz Act 1 boss plays the correct theme

For the changes go to the commits section

(2P versus is bugged and can crash loading the old S2 versus menu, tested on BlastEm)

Note that in some instances when code is removed it is to "make room" for different code. I can't seem to get it to work in those instances without the game freaking out by breaking all the music.

Sound test codes such as 2,4,5,6 are not original, they have been in the game by default. 7 emeralds but super check was disabled originally.

Sonic Retro and TCRF for source of some changes
https://forums.sonicretro.org/threads/transform-at-will-in-sonic-2.28959/
https://info.sonicretro.org/SCHG_How-to:Fix_bugs_relating_to_Super_Sonic
https://tcrf.net/Proto:Sonic_the_Hedgehog_3#Sega_Screen
Plus the original disassembly was MASSIVE help
