depth=-y
inRoomTime++

if  !freeze and state!=s_intoWater and !g.usePath and allowInputs
{
	// --------------------
	// 1. Gather input
	// --------------------
	up    = keyboard_check(ord("W"));
	down  = keyboard_check(ord("S"));
	left  = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	fire  = mouse_check_button(mb_left) or keyboard_check_direct(vk_control)
	
	if mouse_check_button_pressed(mb_right) {x=mouse_x;y=mouse_y}

	if keyboard_check_released(vk_anykey) g.lastFacing=facing
	// --------------------
	// 2. Build direction string
	// --------------------
	var dir = "";

	// Vertical
	if (up)       dir = "UP";
	else if (down) dir = "DOWN";

	// Horizontal
	if (right) {
	    if (dir != "") dir += " ";
	    dir += "RIGHT";
	} else if (left) {
	    if (dir != "") dir += " ";
	    dir += "LEFT";
	}

	// Opposite press priority
	if (up && left && right)      dir = "UP";
	else if (down && left && right) dir = "DOWN";

	// Fire
	if (fire) {
	    if (dir != "") dir += " and ";
	    dir += "FIRE!!";
	}

	// Default
	//if (dir == "") dir = "NONE";
	if !keyboard_check(ord("W")) and !keyboard_check(ord("A")) and !keyboard_check(ord("S")) and !keyboard_check(ord("D")) 
	dir = "NONE"

	inputDirection = dir;

	if dir = "NONE" 
	and state!=s_somer
	{state=s_idle;xspd=0;yspd=0;anim_spd=0}

	if state==s_idle 
		{
		frm=0 // if you want to reset the frame on idle
		{xspd=0;yspd=0}
		if lastState!="NONE"
			{
			if lastState=="RIGHT" or lastState=="LEFT" {frm=8;frm_start=8}	
			if lastState=="DOWN" {frm=16;frm_start=16}	
			if lastState=="UP" {frm=0;frm_start=0}	
			if lastState=="UP RIGHT" or lastState=="UP LEFT" {frm=4;frm_start=4}	
			if lastState=="DOWN RIGHT" or lastState=="DOWN LEFT" {frm=12;frm_start=12}	
			}
		}
	

	if state==s_idle and dir!="NONE" 
		{	
		state=s_walk
		}
		
	if (fire) and dir!="UP and FIRE!!" and dir!="DOWN and FIRE!!" state=s_somer
		
	if state==s_walk
		{
		anim_spd=walk_animspd
		if inputDirection=="LEFT"  {frm_start=8;frm_end=12;xspd=walkspd*-1;yspd=0;facing=-1}
		if inputDirection=="RIGHT" {frm_start=8;frm_end=12;xspd=walkspd;yspd=0;facing=1}
		if inputDirection=="UP" {frm_start=0;frm_end=4;xspd=0;yspd=walkspd*-0.8;facing=1}
		if inputDirection=="DOWN" {frm_start=16;frm_end=20;xspd=0;yspd=walkspd*0.8;facing=1}
		if inputDirection=="UP RIGHT" {frm_start=4;frm_end=8;xspd=walkspd;yspd=walkspd*-.25;facing=1}
		if inputDirection=="UP LEFT" {frm_start=4;frm_end=8;xspd=walkspd*-1;yspd=walkspd*-.25;facing=-1}
		if inputDirection=="DOWN RIGHT" {frm_start=12;frm_end=16;xspd=walkspd;yspd=walkspd*.25;facing=1}
		if inputDirection=="DOWN LEFT" {frm_start=12;frm_end=16;xspd=walkspd*-1;yspd=walkspd*.25;facing=-1}
		if inputDirection=="RIGHT and FIRE!!" state=s_somer
		lastState=inputDirection
		g.lastState=lastState
		}
	
	if state==s_somer
		{
		
		anim_spd=0.333
		
		
			frm_start=20;frm_end=28;
			if frm==26 and splashReady firstHit=true;
			if lastState=="LEFT"  {xspd=walkspd*-2;yspd=0;facing=-1}
			if lastState=="RIGHT" {xspd=walkspd*2;yspd=0;facing=1}
			if lastState=="UP RIGHT" {xspd=walkspd*2;yspd=walkspd*-.5;facing=1}
			if lastState=="UP LEFT" {xspd=walkspd*-2;yspd=walkspd*-.5;facing=-1}
			if lastState=="DOWN RIGHT" {xspd=walkspd*2;yspd=walkspd*.5;facing=1}
			if lastState=="DOWN LEFT" {xspd=walkspd*-2;yspd=walkspd*.5;facing=-1}
			if lastState=="DOWN" {frm_start=16;frm_end=20;yspd=walkspd*.5}
			if lastState=="UP" {frm_start=0;frm_end=3;yspd=walkspd*-.5}
			
			if frm>=frm_end {inputDirection="RIGHT";state=s_idle;} // back to idle
			
		
		if instance_exists(obj_target) // is there a landing target in this scene?
			{
				if frm>=26 and frm<=28 // am I in a landing pose?
					{
						var instNear=instance_nearest(x,y,obj_target) // get the target
						if point_distance(x,y,instNear.x,instNear.y)>=4 and point_distance(x,y,instNear.x,instNear.y)<11 
						// are we close enough..but not too close?
							{
								
							x=lerp(x,instNear.x,0.5) // move towards it
							y=lerp(y,instNear.y,0.5)
							
							}
					
					}
			}
		
		}




	update_move()
	
	



}

if state==s_intoWater or state==s_dead
	{
		fall+=0.5;
		if fall==1 
		{
		
			instance_create_layer(x,y,"Instances",obj_splash)

			state=s_dead

		}
	}


