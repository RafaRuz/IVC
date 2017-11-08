#include "colors.inc"
#include "shapes.inc" 
    
#declare w = 1; //width
#declare h = 4; //height 
#declare d = -2; //depth
#declare proportion = 1;  

#declare c = <0,1.1,0>;
        
camera{


    location <-4,6,4>
    look_at <2,4,-1>

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

object{ // Round_Box(A, B, WireRadius, UseMerge)
        Round_Box(c,c+<w,h,d>, 0.25   , 0)  
         
        texture{ pigment{ color Cyan}
               //normal { radial sine_wave frequency 30 scale 0.25 }
                 finish { phong 1 }
                }
        scale<1,1,1>*proportion  rotate<0, 0,0> translate<0,0,0>
      } // ---------------------------------------------------------

//Arm1
object{ // Round_Box(A, B, WireRadius, UseMerge)
        Round_Box(c+<0.5,0.5,0.001>, c+<0.8,-1,-0.5>, 0.1   , 0)  
         
        texture{ pigment{ color Cyan}
               //normal { radial sine_wave frequency 30 scale 0.25 }
                 finish { phong 1 }
                }
        scale<1,1,1>*proportion  rotate<0, 0,0> translate<0,0,0>
      } // ---------------------------------------------------------
      
//Hand1      
 object{ // Round_Box(A, B, WireRadius, UseMerge)
        Round_Box(c+<0.8,-1,0.001>, c+<0.2,-1,-0.5>, 0.1   , 0)  
         
        texture{ pigment{ color Cyan}
               //normal { radial sine_wave frequency 30 scale 0.25 }
                 finish { phong 1 }
                }
        scale<1,1,1>*proportion  rotate<0, 0,0> translate<0,0,0>
      } // ---------------------------------------------------------
//Arm2

object{ // Round_Box(A, B, WireRadius, UseMerge)
        Round_Box(c+<0.5,-1,d-0.001>,c+<0.8,0.5,d+0.5>, 0.1   , 0)  
         
        texture{ pigment{ color Cyan}
               //normal { radial sine_wave frequency 30 scale 0.25 }
                 finish { phong 1 }
                }
        scale<1,1,1>*proportion  rotate<0, 0,0> translate<0,0,0>
      } // ---------------------------------------------------------
//Hand2      
 object{ // Round_Box(A, B, WireRadius, UseMerge)
        Round_Box(c+<0.8,-1,d-0.001>, c+<0.2,-1,d+0.5>, 0.1   , 0)  
         
        texture{ pigment{ color Cyan}
               //normal { radial sine_wave frequency 30 scale 0.25 }
                 finish { phong 1 }
                }
        scale<1,1,1>*proportion  rotate<0, 0,0> translate<0,0,0>
      } // ---------------------------------------------------------      

//Leg1
 
object{ // Round_Box(A, B, WireRadius, UseMerge)
        Round_Box(  c+<w-0.5,0.5,d-0.001>,c+<w-0.8,-1,d+0.5>, 0.1   , 0)  
         
        texture{ pigment{ color Cyan}
               //normal { radial sine_wave frequency 30 scale 0.25 }
                 finish { phong 1 }
                }
        scale<1,1,1>*proportion  rotate<0, 0,0> translate<0,0,0>
      } // ---------------------------------------------------------
//Foot1      
 object{ // Round_Box(A, B, WireRadius, UseMerge)
        Round_Box(c+<w-0.5,-1,d-0.001>,c+<w-1.1,-1,d+0.5>, 0.1   , 0)  
         
        texture{ pigment{ color Orange}
               //normal { radial sine_wave frequency 30 scale 0.25 }
                 finish { phong 1 }
                }
        scale<1,1,1>*proportion  rotate<0, 0,0> translate<0,0,0>
      } // ---------------------------------------------------------      
      
//Leg2
object{ // Round_Box(A, B, WireRadius, UseMerge)
        Round_Box( c+<w-0.5,0.5,+0.001>,c+<w-0.8,-1,d+1.5>, 0.1   , 0)  
         
        texture{ pigment{ color Cyan}
               //normal { radial sine_wave frequency 30 scale 0.25 }
                 finish { phong 1 }
                }
        scale<1,1,1>*proportion  rotate<0, 0,0> translate<0,0,0>
      } // ---------------------------------------------------------
      
//Foot2      
 object{ // Round_Box(A, B, WireRadius, UseMerge)
        Round_Box(c+<w-0.5,-1,+0.001>,c+<w-1.1,-1,d+1.5>, 0.1   , 0)  
         
        texture{ pigment{ color Orange}
               //normal { radial sine_wave frequency 30 scale 0.25 }
                 finish { phong 1 }
                }
        scale<1,1,1>*proportion  rotate<0, 0,0> translate<0,0,0>
      } // ---------------------------------------------------------      
           
      

//Left eye

sphere { c, 0.3 

        texture { pigment{ color White}
                  finish { phong 1.0 reflection 0.00}
                } // end of texture

          scale<1,1,1>*proportion  rotate<0,0,0>  translate<0.2,0.5,-1.6>  
       }  // end of sphere -----------------------------------
       //Iris1
            sphere { c, 0.1 
            
                    texture { pigment{ color Black}
                              finish { phong 1.0 reflection 0.00}
                            } // end of texture
            
                      scale<1,1,1>*proportion  rotate<0,0,0>  translate<-0.05,0.5,-1.65>  
                   }  // end of sphere -----------------------------------  
                   
                   
                   
                   
                   
//Rigth eye       
sphere { c, 0.3 

        texture { pigment{ color White}
                  finish { phong 1.0 reflection 0.00}
                } // end of texture

          scale<1,1,1>*proportion  rotate<0,0,0>  translate<0.2,0.5,-0.4>  
       }  // end of sphere ----------------------------------- 

                   
        //Iris2       
        sphere { c, 0.1 
        
                texture { pigment{ color  Black}
                          finish { phong 1.0 reflection 0.00}
                        } // end of texture
        
                 scale<1,1,1>*proportion  rotate<0,0,0>  translate<-0.05,0.5,-0.3>  
               }  // end of sphere ----------------------------------- 
       
       
// Pico

object{ // Round_Box(A, B, WireRadius, UseMerge)
        Round_Box(c+<0.2,0,-0.6>,c+<-0.7,0.2,-1.4>, 0.1   , 0)  
         
        texture{ pigment{ color Orange}
               //normal { radial sine_wave frequency 30 scale 0.25 }
                 finish { phong 1 }
                }
        scale<1,1,1>*proportion  rotate<0, 0,0> translate<0,0,0>
      } // ---------------------------------------------------------

//Nose            
triangle { 
                c+<-0.01, 0, -0.75>, c+<-0.01, 0, -1.25>, c+<-0.01, 0.5, -1>
                texture { pigment{ color Orange } 
                finish { phong 1.0 }
              }
              scale<1,1,1>*proportion
               }
               
               
//Cola 

object{ // Round_Box(A, B, WireRadius, UseMerge)
        Round_Box( c+<w,h-0.6,-0.5>,c+<5.3,0.2,-1.4>, 0.1   , 0)  
         
        texture{ pigment{ color Red}
               //normal { radial sine_wave frequency 30 scale 0.25 }
                 finish { phong 1 }
                }
        scale<1,1,1>*proportion  rotate<0, 0,0> translate<0,0,0>
      } // ---------------------------------------------------------