if(objSelectionManager.selectedInstance!=-1){
    if(objMapManager.mapAbleToMove[mapPositionX,mapPositionY]==1){
        moveMapElement(objSelectionManager.selectedInstance,mapPositionX,mapPositionY);
        resetMoveMap(objSelectionManager.selectedInstance);
    }
    else show_message("Fuck you click in the possible range");
}
