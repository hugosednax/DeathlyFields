var i,j;
for(i=0;i<MAP_WIDTH;i++){
    for(j=0;j<MAP_HEIGHT;j++){
        mapFog[i,j]=0;
        if(j%2==0)
        mapContents[i,j] = instance_create(
                        MAP_INIT_POSITION_X+i*BLOCK_SIZE,
                        MAP_INIT_POSITION_Y+j*BLOCK_SIZE*3/4,
                        objMapBlock);
        else
        mapContents[i,j] = instance_create(
                        MAP_INIT_POSITION_X+i*BLOCK_SIZE+BLOCK_SIZE/2,
                        MAP_INIT_POSITION_Y+j*BLOCK_SIZE*3/4,
                        objMapBlock);
        mapAbleToMove[i,j]=0;
        mapContents[i,j].mapPositionX = i;
        mapContents[i,j].mapPositionY = j;
    }
}
