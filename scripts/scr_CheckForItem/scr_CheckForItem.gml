var currInventory = argument0,
	searchItem = argument1;

for(var i = 0; i < ds_list_size(currInventory); i++)
{
	currItem = ds_list_find_value(currInventory, i);
	
	if currItem == searchItem then return true;
}

return false;