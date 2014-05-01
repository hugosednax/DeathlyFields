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
    /*
    width  = objID.sprite_width /32;
    height = objID.sprite_height/32;
    var k,l;
    for(k=initIndexX;k<initIndexX+width && k<MAP_WIDTH;k++){
        for(l=initIndexY;l<initIndexY+height && l<MAP_HEIGHT;l++){
            mapContents[k,l] = objID;
        }
    }
    */
    
    var initX,InitY,InitZ, sight;
    sight = objID.sight;
    initX=initIndexX - (initIndexY- (initIndexY&1))/2;
    initZ=initIndexY;
    initY=-(initX+initZ);

    var kx,ky,kz;


    for(kx=initX-sight; kx<=initX+sight;kx++){
        for(ky=initY-sight; ky<=initY+sight;ky++){
            for(kz=initZ-sight; kz<=initZ+sight;kz++){
                if (kx+ky+kz == 0){
                    if(kx+(kz-(kz&1))/2 >= 0 && kx+(kz-(kz&1))/2<MAP_WIDTH && kz>=0 && kz<MAP_HEIGHT)
                        mapFog[kx+(kz-(kz&1))/2,kz] ++;
                }
            }
        }
    }
    
    objID.mapPositionX = initIndexX;
    objID.mapPositionY = initIndexY;        
}
