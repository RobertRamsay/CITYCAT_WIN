
colliding=false
if( !place_meeting(x, y, all) ) {
  // collisionState=0
}

if g.usePath and !onPath
	{
	if room==CP9 {path_start(path_cat_stairs1,1*g.pathDirection,0,1);onPath=true}
	//game_end()
	
	}

if onPath
	{
	if g.pathDirection==1
		{
		if direction>90 and direction <270 facing=-1 else facing=1
			frm_start=4;frm_end=8;anim_spd=0.2
			
		}
	if g.pathDirection==-1
		{
		if direction>90 and direction <270 facing=-1 else facing=1
			frm_start=12;frm_end=16;anim_spd=0.2			
		}		
		frm+=anim_spd;
			if frm<=frm_start frm=frm_start
	}
	
