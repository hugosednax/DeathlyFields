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
    
    width = objID.sprite_width/32;
    height = objID.sprite_height/32;
    
    var k,l;
    for(k=initIndexX;k<initIndexX+width && k<MAP_WIDTH;k++){
        for(l=initIndexY;l<initIndexY+height && l<MAP_HEIGHT;l++){
            mapContents[k,l] = 0;
        }
    }
    
    for(k=newIndexX;k<newIndexX+width && k<MAP_WIDTH;k++){
        for(l=newIndexY;l<newIndexY+height && l<MAP_HEIGHT;l++){
            mapContents[k,l] = argument0;
        }
    }
    
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
                    mapFog[kx+(kz-(kz&1))/2,kz]++;
                }
            }
        }
    }
}
argument0.x = x;
argument0.y = y;
argument0.mapPositionX = mapPositionX;
argument0.mapPositionY = mapPositionY;
