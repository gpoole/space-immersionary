// angle_add(base, addition)
var base = argument[0];
var addition = argument[1];
var result = (base + addition) % 360;
if(result < 0) {
    result += 360;
}
return result;
