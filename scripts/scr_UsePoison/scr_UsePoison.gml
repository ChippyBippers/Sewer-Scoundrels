var currPlayer = argument0,
	enemyPlayer = argument1;

show_debug_message(currPlayer)
show_debug_message(enemyPlayer)

var poison = instance_create_layer(currPlayer.x, currPlayer.y, "Instances", obj_PoisonProjectile);


with(poison)
{
	move_towards_point(enemyPlayer.x,enemyPlayer.y,5);
}