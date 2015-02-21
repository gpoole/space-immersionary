// vector_to_point(angle, magnitude[, origin_x, origin_y])

var angle = argument[0];
var magnitude = argument[1];
var point;

if(argument_count > 2) {
    point[0] = argument[2];
    point[1] = argument[3];
} else {
    point[0] = 0;
    point[1] = 0;
}

point[0] += magnitude * sin(radtodeg(angle));
point[1] += magnitude * cos(radtodeg(angle));

return point;
