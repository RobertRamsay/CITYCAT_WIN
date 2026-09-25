draw_sprite(spr_lights,0,x-9,y-2)

if state==stop draw_sprite(spr_traffixPedestrian,0,x,y)
if state==go draw_sprite(spr_traffixPedestrian,1,x,y+10)

timer++
if timer>=change
	{state=1-state;timer=0}
	
	