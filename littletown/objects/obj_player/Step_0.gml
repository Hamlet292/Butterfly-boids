/// @description player movement

//Check Keys for Movement

moveRight = keyboard_check(vk_right)
moveLeft = keyboard_check(vk_left)
moveUp = keyboard_check(vk_up)
moveDown = keyboard_check(vk_down)


// calculate movement
vx = ((moveRight- moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);
// if idle
if (vx == 0 && vy = 0){
	//do nothing
}

//if moving

if (vx != 0 || vy != 0) {
	x += vx;
	y += vy;
	
	//change sprite
	if (vx > 0 ){
		sprite_index = lil_dude_spriteRight;
		dir = 0;
	}
	if (vx < 0 ) {
		sprite_index = lil_dude_spriteLeft;
		dir = 2;
	}
	if (vy > 0) {
		sprite_index = spr_player_idle_down;
		dir = 3;
	}
	if (vy < 0){
		sprite_index = lil_dude_spriteUp;
		dir = 1;
	}
}
