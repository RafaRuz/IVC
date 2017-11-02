#include "colors.inc" 
    
#declare w = 5; //width
#declare h = 1; //height 
#declare d = -2; //depth 

#declare c = <1,1,-1>;

camera{

    location <-5,5,0>
    look_at <0, 0, 0> 
} 

light_source { 
        <0,10,0>
        color White 
}
light_source { 
        <0,-10,0>
        color White 
}

 
box{
    c 
    c+<w,h,d>
    pigment { Cyan } 
   
}

box{
    
    c+<1,-1,-0.7>
    pigment { Cyan } 
   
}

box{
    c
    c+<1,-1,-0.7>
    pigment { Cyan } 
   
}

plane{
    -y
     1.5
     pigment { Orange }
}