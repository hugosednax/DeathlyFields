attacker    = argument0;
target      = argument1;
if(objMapManager.mapAbleToAttack[target.mapPositionX,target.mapPositionY])
    target.hitpointsCurr = max(0,target.hitpointsCurr - attacker.attack);
