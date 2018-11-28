/// @desc Sets the stats of a provided gridObj
/// @param gridObj  The Grid Object to be modified
/// @param maxHP  Maximum health points
/// @param updateHP  (boolean) Update current hp based on changes to maxHP
/// @param atk  Attack Power
/// @param inventorySlots  Number of inventory slots

with argument0 {
	if argument2 {
		//scales hp up/down by maxHP's rate of change
		hp *= (maxHP==0)? 0: (argument1/maxHP)
	}
	maxHP = argument1
	atk = argument3
	inventorySlots = argument4
}