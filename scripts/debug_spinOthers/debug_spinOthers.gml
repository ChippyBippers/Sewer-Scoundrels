with gridObject_base{
	if id != other.id {
		gridScheduler_enqueue(id,[actionSetup_spinny,noone])	
	}
}