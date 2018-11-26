var entity = argument0;

with gridScheduler {
	var index = ds_list_find_index(entities,entity);
	
	if index != -1 {
		ds_list_delete(entities,index)
		
		if listIter >= ds_list_size(entities){
			listIter = 0
		}
	}
}