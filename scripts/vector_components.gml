// vector_components(angle, magnitude)
var components;
var angle = argument[0];
var magnitude = argument[1];
components[0] = magnitude * cos(degtorad(angle)); //x
components[1] = magnitude * sin(degtorad(angle)); //y
return components;
