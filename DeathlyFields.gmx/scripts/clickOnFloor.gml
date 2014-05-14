if(objSelectionManager.selectedInstance!=-1){
    if(objMapManager.mapAbleToMove[mapPositionX,mapPositionY]==1){
        moveMapElement(objSelectionManager.selectedInstance,mapPositionX,mapPositionY);
        resetMoveMap(objSelectionManager.selectedInstance);
        resetAttackMap(objSelectionManager.selectedInstance);
    }
}
//aqui ou no objSummoningManager left global click

if(objSummoningManager.cardname!=-1){
    if(objMapManager.mapContents[mapPositionX,mapPositionY] ==-1 ){
        with(objSummoningManager.cardname)
            instance_destroy();
        objSummoningManager.cardname=-1;
        pushMapElement(objSummoningManager.name,mapPositionX,mapPositionY);
         objSummoningManager.name=-1;
    }
}


