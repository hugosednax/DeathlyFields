var i,j, coords;
for(i=0;i<MAP_WIDTH;i++){
    for(j=0;j<MAP_HEIGHT;j++){
        if(mapAbleToMove[i,j]==1){
            coords = convertIndexToCoordinates(i,j);
            draw_sprite_ext(sprBlueBlock,0,coords mod 10000, coords div 10000,1,1,0,c_white,0.5);
        }
    }
}
