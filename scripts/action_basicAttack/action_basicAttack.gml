//crude animation system
attackIter++

var mid = attackTime/2;

if attackIter>=attackTime {
	x = gx*16
	y = gy*16
	return true
} else if attackIter>=mid{
	if attackIter = mid then with attackTarget {
		gridScheduler_enqueue(id,[actionSetup_hurt,noone])
		gridObject_applyDamage(other.id,id)
	}
	
	x = lerp(attack_tx,gx,(attackIter-mid)/mid)*16
	y = lerp(attack_ty,gy,(attackIter-mid)/mid)*16
} else {
	x = lerp(gx,attack_tx,attackIter/mid)*16	
	y = lerp(gy,attack_ty,attackIter/mid)*16	
}

return false