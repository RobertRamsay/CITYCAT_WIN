depth=-10000
//draw UI border:
draw_sprite(spr_UI,0,0,0)
draw_sprite_ext(spr_catHead,0,8,11,2,2,0,c_white,1)
draw_sprite_ext(spr_relic,0,304,25,2,2,0,c_white,1)

// draw items
var dxpos=160
var dypos=13
if hasValve and !usedValve draw_sprite_ext(spr_valve,0,dxpos,dypos,2,2,0,c_white,1)
if hasCoin and !usedCoin draw_sprite_ext(spr_coin,0,dxpos,dypos,2,2,0,c_white,1)
if hasNewspaper and !usedNewspaper draw_sprite_ext(spr_newspaper,0,dxpos,dypos,2,2,0,c_white,1)
if hasKey and !usedKey draw_sprite_ext(spr_key,0,dxpos,dypos,2,2,0,c_white,1)