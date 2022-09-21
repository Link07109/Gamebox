/// @description when colliding with hero, prompt comes up to open it, giving you what is inside and then getting destroyed

if keyboard_check_pressed(ord("F")) {
	if !other.has_read_script {
		is_actionable = false // make it so the player cant move while reading the script
		
		// show script to player
		
		if keyboard_check_pressed(ord("F")) { // once player finishes reading script
			other.has_read_script = true
			is_actionable = true
		}
	} else {
		if other.item == obj_heart_upgrade { // 5 total exist
			max_hp++
			hp = max_hp
		} else {
			ds_list_add(items, other.item)
		}
	
		if other.item == obj_talisman // 2 total exist but just 1 for now
			obj_pause_menu.has_talisman = true

		if other.item == obj_scarf {
			has_scarf = true
			scarf_available = true
			obj_pause_menu.has_scarf = true
		}

		instance_destroy(other)
	}
}