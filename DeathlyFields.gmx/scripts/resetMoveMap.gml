var i,j;
for(i=0;i<MAP_WIDTH;i++){
    for(j=0;j<MAP_HEIGHT;j++){
        objMapManager.mapAbleToMove[i,j]=0;
    }
}

var initX,InitY,InitZ, moveRange;
moveRange = argument0.moveRange;
initX=argument0.mapPositionX - (argument0.mapPositionY- (argument0.mapPositionY&1))/2;
initZ=argument0.mapPositionY;
initY=-(initX+initZ);

var kx,ky,kz;


for(kx=initX-moveRange; kx<=initX+moveRange;kx++){
    for(ky=initY-moveRange; ky<=initY+moveRange;ky++){
        for(kz=initZ-moveRange; kz<=initZ+moveRange;kz++){
            if (kx+ky+kz == 0){
                if(kx+(kz-(kz&1))/2 >= 0 && kx+(kz-(kz&1))/2<MAP_WIDTH && kz>=0 && kz<MAP_HEIGHT)
                    objMapManager.mapAbleToMove[kx+(kz-(kz&1))/2,kz] =1;
            }
        }
    }
}
