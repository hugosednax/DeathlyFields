var i,j, newInstanceBlock;
for(i=0;i<MAP_WIDTH;i++){
    for(j=0;j<MAP_HEIGHT;j++){
        mapFog[i,j]=0;
        if(j%2==0)
            newInstanceBlock = instance_create(
                        MAP_INIT_POSITION_X+i*BLOCK_SIZE,
                        MAP_INIT_POSITION_Y+j*BLOCK_SIZE*3/4,
                        objMapBlock);
        else
            newInstanceBlock = instance_create(
                        MAP_INIT_POSITION_X+i*BLOCK_SIZE+BLOCK_SIZE/2,
                        MAP_INIT_POSITION_Y+j*BLOCK_SIZE*3/4,
                        objMapBlock);
        mapContents[i,j] = -1;
        mapAbleToMove[i,j]=0;
        newInstanceBlock.mapPositionX = i;
        newInstanceBlock.mapPositionY = j;
    }
}
