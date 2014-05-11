var i,initX,InitY,InitZ, sight;
resetFog();
if(objMapManager.team == 0){
    for(i=0;i<objsTeam0Size;i++){
        sight = objsTeam0[i].sight;
        initX=objsTeam0[i].mapPositionX - (objsTeam0[i].mapPositionY - (objsTeam0[i].mapPositionY&1))/2;
        initZ=objsTeam0[i].mapPositionY;
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
    }
}
else{
   for(i=0;i<objsTeam1Size;i++){
        sight = objsTeam1[i].sight;
        initX=objsTeam1[i].mapPositionX - (objsTeam1[i].mapPositionY - (objsTeam1[i].mapPositionY&1))/2;
        initZ=objsTeam1[i].mapPositionY;
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
    }
}
