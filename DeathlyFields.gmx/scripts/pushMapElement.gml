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
    
    width  = objID.sprite_width /32;
    height = objID.sprite_height/32;
    var k,l;
    for(k=initIndexX;k<initIndexX+width && k<MAP_WIDTH;k++){
        for(l=initIndexY;l<initIndexY+height && l<MAP_HEIGHT;l++){
            mapContents[k,l] = objID;
        }
    }
    
    var sight = objID.sight;
    var s,a,ky;
    
    for(k=max(0,initIndexX-sight);k<MAP_WIDTH && k<=min(MAP_WIDTH-1,initIndexX+sight);k++){
        dif = floor(sqrt(sqr(sight)-sqr(k-initIndexX)));
        l=min(MAP_HEIGHT-1,initIndexY + dif);
        mapFog[k,l] ++;
        if(dif!=0){
            l=max(0,initIndexY - dif);
            mapFog[k,l] ++;
        }
        for(ky=max(0,initIndexY - dif + 1);ky<=min(MAP_HEIGHT-1,initIndexY+dif-1);ky++){
            mapFog[k,ky]++;
        }
    }

    objID.mapPositionX = initIndexX;
    objID.mapPositionY = initIndexY;        
}
