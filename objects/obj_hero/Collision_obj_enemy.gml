/// @description Take damage from enemy

if is_vulnerable {
	// temp commented out for video
	// hp -= other.attack_damage
	alarm[0] = 120 // frames (2 seconds)
	is_vulnerable = false
}

if hp <= 0 { // death
	if scarf_available {
		hp = 2
		scarf_available = false // becomes true again at a checkpoint
	} else {
		obj_gui.num_lives_left -= 1
		room_restart()
		// instance_destroy() // would be replaced with a death animation and then on the animation end it would get destroyed
		if num_lives_left <= 0 { // game over
			game_restart()
		}
	}
}