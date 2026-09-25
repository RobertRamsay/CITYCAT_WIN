inputDirection=""

debug=0
//

// cooldown for inputs:
allowInputs=false
alarm[2]=10 //input delay

doOnce=0
state=0

//---------
s_idle=0 // not moving
s_walk=1 // moving
s_jump=2 // if not moving and fire 
s_somer=3 // if moving and fire
s_use=4  // context (if near) interaction [ignore jumps if context based]
s_grab=5  // can shimmy (left/right) or climb (up) or drop (down)
s_climb=6 // 
s_shimmy=7 
s_intoWater=8
s_dead=9

fall=0

firstHit=true
splashReady=true
reflFrm=0
freeze=0
pulling=false // for targeting jumps
// defaults based on walk.
// start frame 

frm_start=8
// end frame
frm_end=12
//
// counter
n=0
// anim rate
walkspd=1
walk_animspd=0.2
frm    = 0;   // current frame within animation
anim_spd = 0;   // frames per second (can be per-animation in anim_data)
xspd=0
yspd=0
colliding=false
onPath=false
elevate=false
inRoomTime=0

	up    = 0//keyboard_check(ord("W"));
	down  = 0//keyboard_check(ord("S"));
	left  = 0//keyboard_check(ord("A"));
	right = 0//keyboard_check(ord("D"));
	fire  = 0//mouse_check_button(mb_left) or keyboard_check_direct(vk_control)
// xpos position [] // movement offsets per frame based on state / direction
xpos[0]=2;xpos[1]=2;xpos[2]=2;xpos[3]=2
// ypos position []
ypos[0]=2;ypos[1]=2;ypos[2]=2;ypos[3]=2
// facing (left/right)
facing=1 // positiove is right negative is left	



lastState=g.lastState

/*
if (lastState=="DOWN RIGHT" or lastState=="RIGHT" or lastState=="UP RIGHT") facing=1
else facing=-1
*/

masterScale=1



