var chunk = argument0;

xDir = chunk[0]
yDir = chunk[1];

attack_tx = gx+xDir
attack_ty = gy+yDir

actionScript = action_basicAttack
attackTarget = grid_meeting_getInstance(attack_tx,attack_ty,gridObject_character)

attackIter = 0
attackTime = moveTime