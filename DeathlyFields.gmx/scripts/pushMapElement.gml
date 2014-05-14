/*
arg0 : object name
arg1 : position x
arg2 : position y
*/
with(objMapManager){
    var initIndexX = argument1;
    var initIndexY = argument2;
    var newCoordinates = convertIndexToCoordinates(initIndexX,initIndexY);
    objID = instance_create(newCoordinates mod 10000,
                            newCoordinates div 10000,
                            argument0);
    mapContents[initIndexX,initIndexY] = objID;
    if(objID.team == 0){
        objMapManager.objsTeam0[objMapManager.objsTeam0Size]=objID;
        objMapManager.objsTeam0Size++
    }else{
        objMapManager.objsTeam1[objMapManager.objsTeam1Size]=objID;
        objMapManager.objsTeam1Size++
    }
    /*
    width  = objID.sprite_width /32;
    height = objID.sprite_height/32;
    var k,l;
    for(k=initIndexX;k<initIndexX+width && k<MAP_WIDTH;k++){
        for(l=initIndexY;l<initIndexY+height && l<MAP_HEIGHT;l++){
            mapContents[k,l] = objID;
        }
    }
    
<<<<<<< HEAD
=======
    */
    
>>>>>>> 45de7868f59b87349b9708874a3bfd5136e48eba
    objID.mapPositionX = initIndexX;
    objID.mapPositionY = initIndexY;        
}
