var i,j;
for(i=0;i<MAP_WIDTH;i++){
    for(j=0;j<MAP_HEIGHT;j++){
        objMapManager.mapAbleToMove[i,j]=0;
    }
}

var initX,InitY,InitZ, moveRange, selectedObj;
selectedObj = objSelectionManager.selectedInstance;
if(selectedObj!=-1){
    moveRange = selectedObj.moveRange;
    initX=selectedObj.mapPositionX - (selectedObj.mapPositionY- (selectedObj.mapPositionY&1))/2;
    initZ=selectedObj.mapPositionY;
    initY=-(initX+initZ);
    
    var kx,ky,kz;
    
    
    for(kx=initX-moveRange; kx<=initX+moveRange;kx++){
        for(ky=initY-moveRange; ky<=initY+moveRange;ky++){
            for(kz=initZ-moveRange; kz<=initZ+moveRange;kz++){
                if (kx+ky+kz == 0){
                    if(kx+(kz-(kz&1))/2 >= 0 && kx+(kz-(kz&1))/2<MAP_WIDTH && kz>=0 && kz<MAP_HEIGHT)
                        if(objMapManager.mapContents[kx+(kz-(kz&1))/2,kz] == -1)
                            objMapManager.mapAbleToMove[kx+(kz-(kz&1))/2,kz] =1;
                }
            }
        }
    }
}
