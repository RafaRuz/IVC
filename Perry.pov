#include "colors.inc" 
    
#declare w = 4; //width
#declare h = 1; //height 
#declare d = -2; //depth
#declare proportion = 1;  

#declare c = <1,0,0>;

camera{

<<<<<<< HEAD
    location <-10,5,6>
    look_at <0,0,0>
=======
    location <-4,2,0>*proportion
    look_at <4,0,0>
>>>>>>> 2ef0a0700fabc51c2a22a4d93d38a53d3ccb0279
} 

light_source { 
        <0,10,0>
        color White 
}
light_source { 
        <0,-10,0>
        color White 
} 

background{Blue}

//Body 
box{
    c 
    c+<w,h,d>
    pigment { Cyan }
    scale<1,1,1>*proportion 
   
}
//Arm1
box{
    c
    c+<0.5,-1,-0.5>
    pigment { Orange }
    scale<1,1,1>*proportion 
   
}
//Arm2
box{
    c+<0,-1,d>
    c+<0.5,0,d+0.5>
    
    pigment { Orange }
    scale<1,1,1>*proportion 
   
}
//Arm3
box{
    c+<w-0.5,-1,d+0.5>
    c+<w,h,d>
    
    pigment { Orange }
    scale<1,1,1>*proportion 
   
}
//Arm4
box{
    c+<w,h,0>
    c+<w-0.5,-1,d+1.5>
    
    
    pigment { Orange }
    scale<1,1,1>*proportion 
   
}

//Left eye

sphere { c, 0.3 

        texture { pigment{ color White}
                  finish { phong 1.0 reflection 0.00}
                } // end of texture

          scale<1,1,1>*proportion  rotate<0,0,0>  translate<0,0.5,-1.9>  
       }  // end of sphere -----------------------------------
       //Iris1
            sphere { c, 0.1 
            
                    texture { pigment{ color Black}
                              finish { phong 1.0 reflection 0.00}
                            } // end of texture
            
                      scale<1,1,1>*proportion  rotate<0,0,0>  translate<-0.3,0.55,-1.9>  
                   }  // end of sphere -----------------------------------  
                   
                   
                   
                   
                   
//Rigth eye       
sphere { c, 0.3 

        texture { pigment{ color White}
                  finish { phong 1.0 reflection 0.00}
                } // end of texture

          scale<1,1,1>*proportion  rotate<0,0,0>  translate<0,0.5,-0.2>  
       }  // end of sphere ----------------------------------- 

                   
        //Iris2       
        sphere { c, 0.1 
        
                texture { pigment{ color  Black}
                          finish { phong 1.0 reflection 0.00}
                        } // end of texture
        
                 scale<1,1,1>*proportion  rotate<0,0,0>  translate<-0.3,0.55,-0.13>  
               }  // end of sphere ----------------------------------- 
       
       
// Pico
prism { -1.00 ,1.00 , 4
        <-1.00, 0.00>, // first point
        < 1.00, 0.00>, 
        < 0.00, 1.50>,
        <-1.00, 0.00>  // last point = first point!!!
        rotate<-90,-90,0> //turns prism in x direction! Don't change this line!  

      texture { pigment{ color Orange } 
                finish { phong 1.0 }
              } // end of texture

       scale <0.55, 0.15, 0.7>*proportion
       rotate<90,90,90> 
       translate c+<0.00, 0.00, -1.05> 
     } // end of prism --------------------------------------------------------
//Nose            
triangle { 
                c+<-0.01, 0, -0.75>, c+<-0.01, 0, -1.25>, c+<-0.01, 0.5, -1>
                texture { pigment{ color Orange } 
                finish { phong 1.0 }
              }
              scale<1,1,1>*proportion
               }
               
               
//Cola 
box{
    c+<w,h-0.6,-0.5>
    c+<5.5,0.2,-1.75>
    pigment { Red }
    
    scale<1,1,1>*proportion 
   
}                     
      /*

plane{
    -y
     1.5
     pigment { Orange }
}  */