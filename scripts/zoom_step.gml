/*
zoom_step(steps)
Created By: Trevor Madge
Handles Zooming using the mouse.
Usage: zoom_step(7);
*/
var step;
step = argument0
if mouse_wheel_down()
{
    if(self.zoom < room_width)then
    {
        self.zoom+=(room_width-self.zoom)/(step/2);
    }
}
if mouse_wheel_up()
{
    if(self.zoom > room_width/3)then
    {
        self.zoom+=((room_width/3)-self.zoom)/(step/2);
    }
}
if mouse_check_button(mb_middle) then
{
    view_xview[0]+=((mouse_x-(view_wview[0]/2))-view_xview[0])/step
    view_yview[0]+=((mouse_y-(view_hview[0]/2))-view_yview[0])/step
}
self.zoom=clamp(self.zoom,room_width/3,room_width)


view_xview[0]=clamp(view_xview[0],0,room_width-view_wview[0])
view_yview[0]=clamp(view_yview[0],0,room_height-view_hview[0])
view_wview[0] += (self.zoom-view_wview[0])/step;
view_hview[0] = view_wview[0]/(room_width/room_height); 