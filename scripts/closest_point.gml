// Find the closest point on a line from 1 to 2 that falls within the maximum distance
// closest_point(x1, y1, x2, y2, max_distance)
// returns an array [x, y]

var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];
var max_distance = argument[4];

var actual_distance = point_distance(x1, y1, x2, y2);
var point;

if(actual_distance < max_distance) {
    point[0] = x2;
    point[1] = y2;
} else {
    var angle = point_direction(x1, y1, x2, y2);
    
    point[0] = max_distance * sin(radtodeg(angle));
    point[1] = max_distance * cos(radtodeg(angle));
}

return point;
