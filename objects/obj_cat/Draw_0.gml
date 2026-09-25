if !freeze and state!=s_intoWater and state!=s_dead and state!=s_grab
{
frm+=anim_spd;
if frm<=frm_start frm=frm_start

if frm>=frm_end and state!=s_dead
	if state !=s_somer frm=frm_start else
	if state!=s_dead {state=s_idle;frm=frm_start}
	
	if collision_rectangle(x-1,y+5,x+1,y+8,obj_waterHazzard1,1,1) 
		{ //reflection	
			
		if state!=s_somer 
			{
			draw_sprite_ext(spr_reflection,reflFrm,round(x/masterScale)*masterScale,(round(y/masterScale)*masterScale)+8,masterScale*facing,masterScale,0,c_white,1)
		//overlay mask:
			draw_sprite(spr_LV1_CP8_overwater,0,0,0)
			}
		else 
			{
			draw_sprite_ext(spr_reflection,choose(3,4),round(x/masterScale)*masterScale,(round(y/masterScale)*masterScale)+8,masterScale*facing,masterScale,0,c_white,1)
		//overlay mask:
			draw_sprite(spr_LV1_CP8_overwater,0,0,0)
			}
		//draw_sprite_ext(spr_cat,floor(frm),round(x/masterScale)*masterScale,(round(y/masterScale)*masterScale)+6,masterScale*facing,masterScale*-1,0,c_white,1)	
		}
}

if state!=s_dead and state!=s_intoWater 
draw_sprite_ext(spr_cat,frm,round(x/masterScale)*masterScale,(round(y/masterScale)*masterScale),masterScale*facing,masterScale,0,c_white,1)

reflFrm+=0.1
if reflFrm>=3 reflFrm=0

//draw_rectangle(x-1,y+5,x+1,y+8,1) 
