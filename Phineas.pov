#include "colors.inc"
#include "shapes.inc" 
    

#declare c = <0,0,0>;       // Pie izquierdo
#declare proportion = 1;    // Proporción



camera{
    location <5,10,2>
    look_at <-1,10,0>
}

light_source{
    <50,50,-50>              
    color White
}


background{ Orange }









// Head

// Back
object{//Round_Cone2( point A, radius A, point B, radius B, rounding radius, merge on) 
         Round_Cone2( <0,0,0>, 1    , <0,2,0>,  0.1, 1)  
         
         texture{ pigment{ color rgb< 1, 0.5, 0.5>*1.4  } // very light red  
                    // normal { bumps 0.5 scale 0.05 }
                       finish { phong 1 reflection 0.00}
                  scale 0.25 
                } // end of texture
         scale<0.8,1,1>*proportion  rotate<60,0,0> translate c+<-1,10,0>
       } // ----------------------------------------------------------- end Round_Cone
       
// Nose       
object{//Round_Cone2( point A, radius A, point B, radius B, rounding radius, merge on) 
         Round_Cone2( <0,0,0>, 1    , <0,2,0>,  0.05, 1)  
         
         texture{ pigment{ color rgb< 1, 0.5, 0.5>*1.4  } // very light red  
                    // normal { bumps 0.5 scale 0.05 }
                       finish { phong 1 reflection 0.00}
                  scale 0.25 
                } // end of texture
         scale<0.8,1,1>*proportion  rotate<-60,0,0> translate c+<-1,10,0>
       } // ----------------------------------------------------------- end Round_Cone

// Neck       
object{//Round_Cone2( point A, radius A, point B, radius B, rounding radius, merge on) 
         Round_Cone2( <0,0,0>, 0.95    , <0,2,0>,  0.1, 1)  
         
         texture{ pigment{ color rgb< 1, 0.5, 0.5>*1.4  } // very light red  
                    // normal { bumps 0.5 scale 0.05 }
                       finish { phong 1 reflection 0.00}
                  scale 0.25 
                } // end of texture
         scale<0.8,1,1>*proportion  rotate<0,0,180> translate c+<-1,9.9,0>
       } // ----------------------------------------------------------- end Round_Cone
       
       

// Left eye
sphere{
    c+<-0.5,10.9,0.2>
    0.5*proportion
    pigment { White }
}

sphere{
    c+<-0.4,11.1,-0.1>
    0.2*proportion
    pigment { Black }
}   
  
  
     
// Right eye       
sphere{
    c+<-1.5,10.9,0.2>
    0.5*proportion
    pigment { White }
}

sphere{
    c+<-1.6,11.1,-0.1>
    0.2*proportion
    pigment { Black }
}


  
  
// Hair
sphere{
    c+<0,2,0>
    0.1*proportion
    rotate<60,0,0>
    translate c+<-1,10,0>
}


// linear prism in y-direction: from .. ,to ..,number of points (first = last)
prism { linear_sweep
        cubic_spline
        0.00 ,1.00 , 6
        <-0.50, 0.00>, < 0.50,  0.00>, < 0.00,-0.75>, <-0.50, 0.00>,
        < 0.50, 0.00>, < 0.00, -0.75>   
        texture {pigment{ color White} 
                 finish { phong 1.0}}
        rotate<0,0,0> 
        translate<-1.0,0,0> 
      } // end of prism --------------------------------------------------------

// linear prism in y-direction: from .. ,to ..,number of points (first = last)
prism { conic_sweep
        cubic_spline
        0.00 ,1.00 , 6
        <-0.50, 0.00>, < 0.50,  0.00>, < 0.00,-0.75>, <-0.50, 0.00>,
        < 0.50, 0.00>, < 0.00, -0.75>
        texture {pigment{ color White} 
                 finish { phong 1.0}}
        //scale <1,-1,1> translate<0,2.00,0>    // turn arround !!!
        rotate<0,0,0>
        translate<0.2,0,0> 
      } // end of prism --------------------------------------------------------


// linear prism in y-direction: from .. ,to ..,number of points (first = last)
prism { conic_sweep
        cubic_spline
        0.00 ,1.00 , 6
        <-0.50, 0.00>, < 0.50,  0.00>, < 0.00,-0.75>, <-0.50, 0.00>,
        < 0.50, 0.00>, < 0.00, -0.75>
        texture {pigment{ color White} 
                 finish { phong 1.0}}
        scale <1,-1,1> translate<0, 1.00,0>    // turn arround !!!
        rotate<0,0,0>
        translate<1.0,0,0> 
      } // end of prism --------------------------------------------------------
