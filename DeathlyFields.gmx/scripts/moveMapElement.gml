/*
arg0 : object id
arg1 : new index x
arg2 : new index y
*/
with(objMapManager){
    initIndexX = argument0.mapPositionX;
    initIndexY = argument0.mapPositionY;
    
    newIndexX = argument1;
    newIndexY = argument2;

    mapContents[initIndexX,initIndexY] = -1;
    mapContents[newIndexX,newIndexY] = argument0;
    
    if(argument0.team == objMapManager.team){
        var initX,InitY,InitZ, sight;
        sight = argument0.sight;
        initX=initIndexX - (initIndexY- (initIndexY&1))/2;
        initZ=initIndexY;
        initY=-(initX+initZ);
    
        var kx,ky,kz;
    
    
        for(kx=initX-sight; kx<=initX+sight;kx++){
            for(ky=initY-sight; ky<=initY+sight;ky++){
                for(kz=initZ-sight; kz<=initZ+sight;kz++){
                    if (kx+ky+kz == 0){
                        if(kx+(kz-(kz&1))/2 >= 0 && kx+(kz-(kz&1))/2<MAP_WIDTH && kz>=0 && kz<MAP_HEIGHT)
                            mapFog[kx+(kz-(kz&1))/2,kz] --;
                    }
                }
            }
        }
    
        initX=newIndexX - (newIndexY- (newIndexY&1))/2;
        initZ=newIndexY;
        initY=-(initX+initZ);
    
    
        for(kx=initX-sight; kx<=initX+sight;kx++){
            for(ky=initY-sight; ky<=initY+sight;ky++){
                for(kz=initZ-sight; kz<=initZ+sight;kz++){
                    if (kx+ky+kz == 0){
                        if(kx+(kz-(kz&1))/2 >= 0 && kx+(kz-(kz&1))/2<MAP_WIDTH && kz>=0 && kz<MAP_HEIGHT)
                            mapFog[kx+(kz-(kz&1))/2,kz]++;
                    }
                }
            }
        }
    }
}
argument0.x = x;
argument0.y = y;
argument0.mapPositionX = mapPositionX;
argument0.mapPositionY = mapPositionY;
