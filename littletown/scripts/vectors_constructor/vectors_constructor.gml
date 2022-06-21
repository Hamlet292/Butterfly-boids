// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vector(_x, _y) constructor{
	x = _x;
	y = _y;
	
	static set = function(_x, _y) {
		x = _x;
		y = _y;
	}
	static add = function(_vector) {
		x += _vector.x;
		y += _vector.y;
	}
	static subtract = function(_vector) {
		x -= _vector.x;
		y -= _vector.y;
	}
 static negate = function() {
	 x = -x;
	 y = -y;
 }
	static multiply = function(_scalar){
		x *= _scalar;
		y *= _scalar;
	}
    static divide = function(_scalar){
	x /= _scalar;
	y /= _scalar;

    }
	static get_magnitude = function() {
		return sqrt((x *x) + (y *y));
	}
	static get_direction = function() {
		return point_direction(0, 0, x, y);
	}
	static normalize = function() {
		if ((x != 0) || (y != 0)) {
			var _factor = 1/sqrt((x *x) + (y *y));
			x = _factor * x;
			y = _factor * y;
		}
	}
	
	static set_magnitude = function(_scalar){
		normalize();
		multiply(_scalar);
	}
	static limit_magnitude = function(_limit) {
		if (get_magnitude() > _limit) {
			set_magnitude(_limit);
		}
	}
	static copy = function(_vector) {
		x = _vector.x;
		y= _vector.y;
	}
}
	
//children/extension of main vector struct
function vector_zero() : vector() constructor {
	x = 0;
	y = 0;
}

function vector_random(_length) : vector() constructor {
	var _dir = random(360);
	if(is_undefined(_length)) {
		_length = 1;
	}
	x = lengthdir_x(_length, _dir);
	y = lengthdir_y(_length, _dir); 
}

function vector_lengthdir(_length, _dir) : vector() constructor {
	x = lengthdir_x(_length, _dir);
	y = lengthdir_y(_length, _dir);
}

function vector_copy(_vector) {
	return new vector(_vector.x, _vector.y);
}

function vector_subtract(_vector_a, _vector_b) {
	return new vector((_vector_a.x - _vector_b.x), (_vector_a.y - _vector_b.y));
}