/*
Argument 0 : Elements Map
Argument 1 : Fog Information Map
*/
var i,j;
for(i=0;i<MAP_WIDTH;i++){
    for(j=0;j<MAP_HEIGHT;j++){
        fogStatus = mapFog[i,j];
        if(fogStatus==0){
            if(j%2==0){
                draw_sprite_ext(sprHexagonFog,0, MAP_INIT_POSITION_X+i*BLOCK_SIZE,MAP_INIT_POSITION_Y+j*BLOCK_SIZE*3/4,1,1,0,c_white,0.7);
            }
            else{
                draw_sprite_ext(sprHexagonFog,0,MAP_INIT_POSITION_X+i*BLOCK_SIZE+BLOCK_SIZE/2,MAP_INIT_POSITION_Y+j*BLOCK_SIZE*3/4,1,1,0,c_white,0.7);
            }
       }
    }
}
