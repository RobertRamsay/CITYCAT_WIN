if other.doSplash and firstHit and !instance_exists(obj_boatSplash) and splashReady
	{
	
	instance_create_layer(other.x,other.y+10,"Instances",obj_boatSplash)	
	firstHit=false
	splashReady=false
	alarm[1]=10
	}
