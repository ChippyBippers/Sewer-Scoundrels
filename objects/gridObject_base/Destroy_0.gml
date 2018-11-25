/// @description Insert description here
// You can write your code in this editor
with gridScheduler{
	//remove from the entities list
	var index = ds_list_find_index(entities,other.id);
	if index!=-1 ds_list_delete(entities,index)
}