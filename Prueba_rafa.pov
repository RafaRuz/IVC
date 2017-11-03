#include "colors.inc"
#include "shapes.inc"

camera{
    location <5,0,0>
    look_at <0,0,0>
}

light_source{
    <0,50,-50>
    color White
}



/*
merge{
    cone { <0,0,0>,1,<0,2,0>,0 
    
           texture { pigment{ color rgb< 1, 0.5, 0.5>*1.4  } // very light red  
                    // normal { bumps 0.5 scale 0.05 }
                       finish { phong 1 reflection 0.00}
                     } // end of texture 
    
           scale <1,1,1> rotate<-90,0,0> translate<0,0,0>         
         } // end of cone -------------------------------------
                       
                       
                                
    cone { <0,0,0>,1,<0,2,0>,0 
    
           texture { pigment{ color rgb< 1, 0.5, 0.5>*1.4  } // very light red  
                    // normal { bumps 0.5 scale 0.05 }
                       finish { phong 1 reflection 0.00}
                     } // end of texture 
    
           scale <1,1,1> rotate<90,0,0> translate<0,0,0>         
         } // end of cone -------------------------------------
         
         
    cone { <0,0,0>,1,<0,2,0>,0 
    
           texture { pigment{ color rgb< 1, 0.5, 0.5>*1.4  } // very light red  
                    // normal { bumps 0.5 scale 0.05 }
                       finish { phong 1 reflection 0.00}
                     } // end of texture 
    
           scale <1,1,1> rotate<0,0,180> translate<0,0,0>         
         } // end of cone -------------------------------------
        
} // end of merge --------------------------------
    */



// Head
object{//Round_Cone2( point A, radius A, point B, radius B, rounding radius, merge on) 
         Round_Cone3( <0,0,0>, 1    , <0,2,0>,  0.1, 1)  
         
         texture{ pigment{ color rgb< 1, 0.5, 0.5>*1.4  } // very light red  
                    // normal { bumps 0.5 scale 0.05 }
                       finish { phong 1 reflection 0.00}
                  scale 0.25 
                } // end of texture
         scale<0.8,1,1>  rotate<60,0,0> translate<0,0.0,0>
       } // ----------------------------------------------------------- end Round_Cone
       

















/*  Posible alternativa
//----------------------------------------------------------------------------------
#include "shapes3.inc"
//----------------------------------------------------------------------------------
object{ Facetted_Sphere( 80, 3 )// ( Quarter_Meridian_Segments, Equatorial_Segments)
        texture{ pigment{ color rgb<1,1,1>  }
                 // normal { bumps 0.1  scale 0.155}
                 finish { specular 0.1  reflection{ 0.15 } }   
               } // end of texture
         
        scale <1,0.75,1>*0.7
        rotate <0,0,0>
        translate< 0,0,0>
      } // end of object  //-------------------------------------------------------- 
//----------------------------------------------------------------------------------
*/




