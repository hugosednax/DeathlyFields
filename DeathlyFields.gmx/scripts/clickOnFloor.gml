if(objSelectionManager.selectedInstance!=-1){
    if(objMapManager.mapAbleToMove[mapPositionX,mapPositionY]==1){
        moveMapElement(objSelectionManager.selectedInstance,mapPositionX,mapPositionY);
        resetMoveMap(objSelectionManager.selectedInstance);
    }
    else if(objMapManager.mapContents[mapPositionX,mapPositionY]==-1)
        show_message("Fuck you click in the possible range");
    else
        show_message("There is a unit in the way");
}
