#include "colors.inc"
#include "shapes.inc" 
    
#declare w = 4; //width
#declare h = 1; //height 
#declare d = -2; //depth
#declare proportion = 1;  

#declare c = <0,1.1,0>;
        
camera{


    location <-15,15,-1>
    look_at <2,0,-1>
    rotate<10*clock,-90*clock,0> 
    translate<0,-.4*clock,0>

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
union{
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
    
              scale<1,1,1>*proportion  rotate<0,0,0>  translate<0.2,0.5,-1.6>*proportion  
           }  // end of sphere -----------------------------------
           //Iris1
                sphere { c, 0.1 
                
                        texture { pigment{ color Black}
                                  finish { phong 1.0 reflection 0.00}
                                } // end of texture
                
                          scale<1,1,1>*proportion  rotate<0,0,0>  translate<-0.05,0.5,-1.65>*proportion  
                       }  // end of sphere -----------------------------------  
                       
                       
                       
                       
                       
    //Rigth eye       
    sphere { c, 0.3 
    
            texture { pigment{ color White}
                      finish { phong 1.0 reflection 0.00}
                    } // end of texture
    
              scale<1,1,1>*proportion  rotate<0,0,0>  translate<0.2,0.5,-0.4>*proportion  
           }  // end of sphere ----------------------------------- 
    
                       
            //Iris2       
            sphere { c, 0.1 
            
                    texture { pigment{ color  Black}
                              finish { phong 1.0 reflection 0.00}
                            } // end of texture
            
                     scale<1,1,1>*proportion  rotate<0,0,0>  translate<-0.05,0.5,-0.3>*proportion  
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
scale<1,1,1>*proportion  rotate<0,0,0> translate<0.5*clock,0,0>          
}
                   
// PoVRay 3.7 Scene File " ... .pov"
// author:  ...
// date:    ...
//--------------------------------------------------------------------------
#version 3.7;
global_settings{ assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 }} 
//--------------------------------------------------------------------------
#include "colors.inc"
#include "textures.inc"
#include "glass.inc"
#include "metals.inc"
#include "golds.inc"
#include "stones.inc"
#include "woods.inc"
#include "shapes.inc"
#include "shapes2.inc"
#include "functions.inc"
#include "math.inc"
#include "transforms.inc"
//--------------------------------------------------------------------------
// camera ------------------------------------------------------------------ 

#declare Camera_0 = camera {/*ultra_wide_angle*/ angle 75      // front view
                            location  <0.0 , 1.0 ,-3.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
#declare Camera_1 = camera {/*ultra_wide_angle*/ angle 90   // diagonal view
                            location  <2.0 , 2.5 ,-3.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
#declare Camera_2 = camera {/*ultra_wide_angle*/ angle 90 // right side view
                            location  <3.0 , 1.0 , 0.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
#declare Camera_3 = camera {/*ultra_wide_angle*/ angle 90        // top view
                            location  <-4.0 , 3.0 ,-2.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 0.0 , 0.0>}
//camera{Camera_3}
// sun ---------------------------------------------------------------------
light_source{<-1500,2000,-2500> color White}

// sky -------------------------------------------------------------- 
plane{<0,1,0>,1 hollow  
       texture{ pigment{ bozo turbulence 0.92
                         color_map { [0.00 rgb <0.20, 0.20, 1.0>*0.9]
                                     [0.50 rgb <0.20, 0.20, 1.0>*0.9]
                                     [0.70 rgb <1,1,1>]
                                     [0.85 rgb <0.25,0.25,0.25>]
                                     [1.0 rgb <0.5,0.5,0.5>]}
                        scale<1,1,1.5>*2.5  translate< 0,0,0>
                       }
                finish {ambient 1 diffuse 0} }      
       scale 10000}
// fog on the ground -------------------------------------------------
fog { fog_type   2
      distance   50
      color      White  
      fog_offset 0.1
      fog_alt    1.5
      turbulence 1.8
    }

// ground ------------------------------------------------------------
plane { <0,1,0>, 0 
        texture{ pigment{ color rgb<0.35,0.65,0.0>*0.72 }
	         normal { bumps 0.75 scale 0.015 }
                 finish { phong 0.1 }
               } // end of texture
      } // end of plane
//--------------------------------------------------------------------------
//---------------------------- objects in scene ----------------------------
//--------------------------------------------------------------------------












