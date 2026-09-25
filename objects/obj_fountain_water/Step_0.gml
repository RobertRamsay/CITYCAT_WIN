image_index=frm
frm+=waterSpeed
if frm==2 frm=0

//if suddenly made visible (one off)
if visible==true and doOnce==0 and g.hasValve and !g.usedValve
	{
	doOnce=1
	instance_create_layer(60,100,"Instances",obj_coin)
	g.msg="A coin flipped off!"
	g.usedValve=true
	}
	
if g.msg="Make it rain!" and visible==true g.msg="I'm done here, such a pretty fountain!"