//Butterfly

//initialize variables
position = new vector(x, y);
velocity = new vector_random(3);
steering_force = new vector_zero();

max_speed = 3;
max_force = 0.1;

wander_angle = random(360);
wander_distance = 50;
wander_power = 40;
wander_change = 20;