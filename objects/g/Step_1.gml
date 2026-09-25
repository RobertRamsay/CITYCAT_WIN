if (IS_STEAM_BUILD) 

	{
		if os_get_config() == "SteamBuild"
		{
		steam_update();
		}
	}

if room=Room_START
and (mouse_check_button_pressed(mb_left) 
or keyboard_check(vk_anykey))
room_goto(ST01) // initial scene