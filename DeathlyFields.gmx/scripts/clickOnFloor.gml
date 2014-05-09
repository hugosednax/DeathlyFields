if(objSelectionManager.selectedInstance!=-1){
    if(objMapManager.mapAbleToMove[mapPositionX,mapPositionY]==1){
        moveMapElement(objSelectionManager.selectedInstance,mapPositionX,mapPositionY);
        resetMoveMap(objSelectionManager.selectedInstance);
        resetAttackMap(objSelectionManager.selectedInstance);
    }
}
