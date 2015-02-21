with oPlayer 
    Bullet = instance_create(oPlayer.x,oPlayer.y,oRailBullet)
    with (oRailBullet) {
            return BulletDirection = -1*point_direction(x, y, mouse_x, mouse_y)
            phy_rotation = BulletDirection
            var tx = 2000 * cos(degtorad(BulletDirection));
            var ty = 2000 * sin(degtorad(BulletDirection));
            physics_apply_force(x,y,tx,ty)
            }