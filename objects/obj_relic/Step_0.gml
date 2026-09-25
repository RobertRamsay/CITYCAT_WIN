if room!=spawnRoom roomChanged=true
if collected {x=-100;y=-100;
	
	if room=spawnRoom and !roomChanged g.msg="Memories are restoring"
	} // hack, just move object outside screen
	
if room==spawnRoom and roomChanged and collected
 { g.msg="Always nice to have memories.."}
 
if room!=spawnRoom and !collected
	{
	x=-100;y=-100
	}
	
if room==spawnRoom and !collected
	{
	x=xpos;y=ypos
	}