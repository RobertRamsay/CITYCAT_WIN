
frm+=0.2
if frm>=8
	if doOnce==0 {doOnce=1;alarm[0]=20}
	

if frm<8
	{
		
		draw_sprite(spr_splash,frm,x,y)
		if frm<=1 draw_sprite(spr_catHead,0,x,y)
		if frm==2 draw_sprite(spr_catHead,1,x,y)
	}
	