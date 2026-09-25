depth=-y
image_index=state;
if state==1 and doOnce==0 and !g.hasNewspaper
	{
	instance_create_layer(x+21,y+8,"Instances",obj_newspaper);
	doOnce=1;
	}
