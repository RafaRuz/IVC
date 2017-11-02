//PRIMER EJEMPLO DE TRABAJO DE POV RAY
#include "colors.inc"
background { Blue }   

camera{

    location <0,10,-25>
    look_at <0, 10, 0> 
}

light_source { 
        <0,10,-25>
        color <1,0,1> 
}
//Huevo1
sphere { 
     <1,0,0>
    1.5
    pigment { Gray } 
  
}   
//Huevo2
sphere { 
     <-1,0,0>
    1.5
    pigment { Gray } 
  
} 
  /*
box{
    <5,10,-2> 
    <6,10-1>
    pigment { White } 
    rotate 5*<0,10.5,0>
}
   */
//Nardo
cylinder{
    <0,0,0> 
    <0,10.5,0>
    1
     pigment { White } 
    
}
//Capullo                   
sphere { 
     <0,10.5,0>
    1
    pigment { Gray }
    
}
//Chochete 

intersection {
  sphere { <0,15,-2>,1.5 
    pigment { Pink }
    translate -.5*x 
  } 
  sphere { <0,15,-2>,1.5 
    pigment { Pink }
    translate +.5*x 
  }
}  
intersection {
  sphere { <0,15,-3>,1 
    pigment { Silver }
    translate -.5*x 
  } 
  sphere { <0,15,-3>,1
    pigment { Silver }
    translate +.5*x 
  }
    translate -.2*y

} 
plane{
    -y
     1.5
     pigment { Orange }
}
plane{
     z
     2
     pigment { Orange }
}
plane{
     -x
     2.5
     pigment {Orange}
}              