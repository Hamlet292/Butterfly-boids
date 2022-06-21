//Butterfly

//initialize variables
position = new vector(x, y);
velocity = new vector_random(7);
steering_force = new vector_zero();

max_speed = 7;
max_force = 0.7;

wander_angle = random(360);
wander_distance = 50;
wander_power = 40;
wander_change = 20;