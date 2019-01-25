/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
key_up = -keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_left = -keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

xmove = (key_right + key_left) * spd;
ymove = (key_up + key_down) * spd;

if(place_meeting(x+xmove, y, obj_wall)) {
	while(place_meeting(x+xmove, y, obj_wall)){
		xmove = xmove - (1 * (xmove / abs(xmove)));
	}
}

if(place_meeting(x, y+ymove, obj_wall)) {
	while(place_meeting(x, y+ymove, obj_wall)){
		ymove = ymove - (1 * (ymove / abs(ymove)));
	}
}

x = x + xmove;
y = y + ymove;

if(fps!=0) then spd = 10/144*60;