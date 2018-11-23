var entity = argument0,
	setup = argument1[0],
	args = argument1[1];

with gridScheduler {
	ds_queue_enqueue(worldActionQueue,[entity,setup,args])
}