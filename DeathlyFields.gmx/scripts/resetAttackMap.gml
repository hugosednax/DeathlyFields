var i,j;
for(i=0;i<MAP_WIDTH;i++){
    for(j=0;j<MAP_HEIGHT;j++){
        objMapManager.mapAbleToAttack[i,j]=false;
    }
}

var initX,InitY,InitZ, range;
range = argument0.range;
initX=argument0.mapPositionX - (argument0.mapPositionY- (argument0.mapPositionY&1))/2;
initZ=argument0.mapPositionY;
initY=-(initX+initZ);

var kx,ky,kz;


for(kx=initX-range; kx<=initX+range;kx++){
    for(ky=initY-range; ky<=initY+range;ky++){
        for(kz=initZ-range; kz<=initZ+range;kz++){
            if (kx+ky+kz == 0){
                if(kx+(kz-(kz&1))/2 >= 0 && kx+(kz-(kz&1))/2<MAP_WIDTH && kz>=0 && kz<MAP_HEIGHT)
                        objMapManager.mapAbleToAttack[kx+(kz-(kz&1))/2,kz] =1;
            }
        }
    }
}
