with gridObject_base{
	if id != other.id {
		gridScheduler_enqueue(id,[action_spinny,noone])	
	}
}