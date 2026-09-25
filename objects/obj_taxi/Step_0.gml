depth=-y
if instance_exists(obj_pedLights)
	{if obj_pedLights.state==0 go=true}

if go and !freeze
	{
	x=x+xr
	y=y+yr
	}

if x<-400 {x=xs;y=ys;go=false}


