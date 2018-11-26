/// @description Add item to inventory

// Adds the current item to the inventory and map
// of the character that collided with it
script_execute(scr_AddToInventory, self, other);
instance_destroy(self);