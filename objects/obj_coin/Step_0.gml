image_index=round(frm)
frm+=animSpd
animSpd-=0.005
if animSpd<0.05 {animSpd=0;frm=0}
if frm==4 frm=0

