if (IS_STEAM_BUILD) {
    steam_init();
}

//roll music
audio_play_sound( music_MAG1_Looped,1,1) //music_ATA,1,1)

catsleft=9
relics=0

lastState=""
lastFacing=1
msg="..."
tx=160;ty=100
teleported=false
n=0
//items has/used [later consider a state 0,1,2 false,true,used]
hasCoin=false
usedCoin=false
hasValve=false
usedValve=false
hasNewspaper=false
usedNewspaper=false
hasKey=false
usedKey=false
usePath=false
pathDirection=1 // forwards or backwards.
byElev=false // did we enter a new room by elevator?
