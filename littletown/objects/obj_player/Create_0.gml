/// @description Insert description here

//variables
walkSpeed = 10;
vx = 0;
vy = 0;
dir = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;
position = new vector(x, y);
velocity = new vector_random(7);
steering_force = new vector_zero();

max_speed = 70;
max_force = 10;

wander_angle = random(360);
wander_distance = 50;
wander_power = 40;
wander_change = 20;
