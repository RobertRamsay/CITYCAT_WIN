depth=-y


if state==idle
	{
	frm=0
	}

// beg / pet
if instance_exists( obj_cat ) and !g.usedNewspaper
	{
	if point_distance(x,y,obj_cat.x,obj_cat.y)<60 
		{
		state=beg
		sfrm=0;efrm=1	
		frmRate=0.05
		g.msg="I need to stay warm tonight."
		}
	else
		{state=idle}
	}
	
// cheer

if state==cheer
	{
	frm=cheerFrames[floor(n)]
	g.msg="Thank you, the perfect blanket!"
	n+=0.1
	if n>=15
		{
			if state!=rest instance_create_layer(x-5,y-11,"Instances",obj_key)
			state=rest
			}
			
	}
	
if state==rest frm=8
	
if state==beg
	{
	frm+=frmRate
	if frm>efrm+1 frm=sfrm
	}
	
image_index=floor(frm);
