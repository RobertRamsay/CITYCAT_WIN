image_index=round(frm)
depth=-y

if instance_exists(obj_cat)
	{
	if point_distance(x,y,obj_cat.x,obj_cat.y)<50
		{
		if state!=open and state==closed
			{
			state=opening
			elevate=false
			
			}
		}
	if point_distance(x,y,obj_cat.x,obj_cat.y)>=50 
		{
		if state==open or state==opening
			{
			state=closing
			}
		}	
	}

if state==opening 
	{
	if frm<4 frm+=0.2
	if frm>=4 {state=open;frm=4}
	}
	
if state==closing or forceCloseDoors and state!=opening
	{
	if frm>0 frm-=0.2
	if frm<=0 {state=closed;frm=0}
	}
	
if state==open solid=false else solid=true
	
