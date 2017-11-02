#include "colors.inc" 
    
#declare w = 4; //width
#declare h = 1; //height 
#declare d = -2; //depth 

#declare c = <0,0,0>;

camera{

    location <-6,3,-2>
    look_at c
} 

light_source { 
        <0,10,0>
        color White 
}
light_source { 
        <0,-10,0>
        color White 
}

//Body 
box{
    c 
    c+<w,h,d>
    pigment { Cyan } 
   
}
//Arm1
box{
    c
    c+<0.5,-1,-0.5>
    pigment { Cyan } 
   
}
//Arm2
box{
    c+<0,-1,d>
    c+<0.5,0,d+0.5>
    
    pigment { Cyan } 
   
}

plane{
    -y
     1.5
     pigment { Orange }
}