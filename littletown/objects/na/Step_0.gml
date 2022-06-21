//butterfly 

//steering forces
if (keyboard_check(vk_space)) {
	steering_force.add(flee_force(obj_seeker.x, obj_seeker.y));
}else{
steering_force.add(seek_force(obj_seeker.x, obj_seeker.y));
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
