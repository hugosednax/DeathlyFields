attacker    = argument0;
target      = argument1;
if(objMapManager.mapAbleToAttack[target.mapPositionX,target.mapPositionY]){
    target.hitpointsCurr = max(0,target.hitpointsCurr - attacker.attack);
    if(target.hitpointsCurr == 0){
        objMapManager.mapContents[target.mapPositionX,target.mapPositionY] = -1;
        resetMoveMap();
        with(target){
            instance_destroy();        
        }
    }
}
