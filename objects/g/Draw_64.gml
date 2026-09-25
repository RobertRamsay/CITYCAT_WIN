
draw_set_font(font_C64)
draw_text(60,0,string(catsleft))
draw_text(0,760,msg)
draw_text(1150,0,string(relics))

draw_set_halign(fa_middle)

if room==Room_START
	draw_text(1280/2,500,"CITYCAT : PROWL\n DEMO BUILD")
	

if room==ENDofDEMO draw_text(360,0,"Press F6 to restart")

draw_set_halign(fa_left)
