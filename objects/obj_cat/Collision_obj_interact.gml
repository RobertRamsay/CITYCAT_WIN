
if room==CP7
	{
	if !g.hasValve and !g.usedValve other.required = "Find the valve to turn on the fountain"
	else {other.objectRef.visible = other.objectRef_Visibility}
	}

if other.elevatorTrigger
	{
	if inRoomTime>250 other.objectRef.forceCloseDoors=true // if lurking in the elevator too long
	
	if other.objectRef.state=other.objectRef.closed {
		g.byElev=true;
			g.tx=real(string_copy(string(other.nextRoomXY),1,3))
			g.ty=real(string_copy(string(other.nextRoomXY),5,3))	
		room=other.roomToGoTo
		}		
	}




