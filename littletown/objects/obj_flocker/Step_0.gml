//butterfly 

//steering forces

apply_force(flee_force(obj_player.x, obj_player.y));

apply_force(align_force(object_index, 300));
apply_force(cohesion_force(object_index, 200));
apply_force(seperation_force(object_index, 100), 200);
//upate vectors 
steering_force.limit_magnitude(max_force);
velocity.add(steering_force);
velocity.limit_magnitude(max_speed);
position.add(velocity);

steering_force.set(0, 0);

//update built in variables

x = position.x;
y = position.y;
image_angle = velocity.get_direction();

edge_wrap();
