/*
arg0 - value of indexX
arg1 - value of indexX
*/
var value = 0;
if(argument1%2==0){
    value += MAP_INIT_POSITION_X+argument0*BLOCK_SIZE;
    value += (MAP_INIT_POSITION_Y+argument1*BLOCK_SIZE*3/4) * 10000;
}
else{
    value += MAP_INIT_POSITION_X+argument0*BLOCK_SIZE+BLOCK_SIZE/2;
    value += (MAP_INIT_POSITION_Y+argument1*BLOCK_SIZE*3/4) * 10000;
}
return value;
//return values : X = return mod 10000; Y = return div 10000;
