//butterfly 

//steering forces
if (keyboard_check(vk_space)) {
	steering_force.add(evade_force(obj_seeker));
}else{
steering_force.add(pursue_force(obj_seeker));
}
//update vectors
velocity.add(steering_force);
velocity.limit_magnitude(max_speed);
position.add(velocity);

steering_force.set(0, 0);

//update built in variables

x = position.x;
y = position.y;
image_angle = velocity.get_direction();
