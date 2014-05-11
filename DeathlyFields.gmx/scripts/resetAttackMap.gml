var i,j;
for(i=0;i<MAP_WIDTH;i++){
    for(j=0;j<MAP_HEIGHT;j++){
        objMapManager.mapAbleToAttack[i,j]=false;
    }
}

var initX,InitY,InitZ, range;
var objSel = objSelectionManager.selectedInstance;
if(objSel != -1){
    range = objSel.range;
    initX=objSel.mapPositionX - (objSel.mapPositionY- (objSel.mapPositionY&1))/2;
    initZ=objSel.mapPositionY;
    initY=-(initX+initZ);
    
    var kx,ky,kz;
    
    
    for(kx=initX-range; kx<=initX+range;kx++){
        for(ky=initY-range; ky<=initY+range;ky++){
            for(kz=initZ-range; kz<=initZ+range;kz++){
                if (kx+ky+kz == 0){
                    if(kx+(kz-(kz&1))/2 >= 0 && kx+(kz-(kz&1))/2<MAP_WIDTH && kz>=0 && kz<MAP_HEIGHT)
                            objMapManager.mapAbleToAttack[kx+(kz-(kz&1))/2,kz] = true;
                }
            }
        }
    }
}
