/// @description Insert description here
// You can write your code in this editor
room=room_teleport
g.teleported=true
g.tx=real(string_copy(nextRoomXY,1,3))
g.ty=real(string_copy(nextRoomXY,5,3))
other.x=g.tx; 
other.y=g.ty;

if forcedAngle!=""
	{
		g.lastState=forcedAngle;
	}

if forcedAngle==""
	{
		g.lastState=other.lastState
		g.lastFacing=other.facing
	}
