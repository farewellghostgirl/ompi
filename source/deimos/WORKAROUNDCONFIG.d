module deimos.openmpi.workaround_configuration;

// can you see what i'm trying to do

export immutable OPAL_ENABLE_DEBUG = 0;
void c(){
 if(OPAL_ENABLE_DEBUG){
     immutable OPAL_OBJ_MAGIC_ID = ulong ((0xdeafbeed) + 0xdeafbeed); // left shift by 32 in original source.?
 } 
}