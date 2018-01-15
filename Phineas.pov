#include "colors.inc"
#include "shapes.inc" 
    

#declare c = <0,0,0>;       // Pie izquierdo
#declare proportion = 1;    // Proporción



camera{
<<<<<<< HEAD
<<<<<<< HEAD
    location <5,15,-3>
    look_at <0,10,0.0>
=======
    location <5,10,2>
    look_at <-1,10,0>
>>>>>>> 383c1c1373ca065f44a8d59d8350293d9fa9d28c
=======
    location <5,18,-5>
    look_at <0,18,0>
>>>>>>> 419589b1b53a0c171d7324c017be2c50ec75d1b5
}

light_source{
    <50,50,-50>              
    color White
}


background{ Orange }









/************************************ HEAD ***********************************/

union{

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
    
    union{
    
        #for (i, 0, 5, 1) 
          sphere{ <0,0,0>, 0.3 
        
                texture { pigment{color Red}
                          //pigment{color rgb< 1, 0.6, 0> }
                          //normal {bumps 0.5 scale 0.10}
                          finish { phong 1 phong_size 50}
                        } // end of texture
        
                scale<5,1,1>  rotate<0,60*i,0>  translate <0,0,0>
              } 
        #end // --------------- end of #for loop
        
        translate c+<0,2,0>
        scale <1,1,1>*proportion                            
        rotate<60,0,0>
        translate c+<-1,10,0>   
    }
    
    translate <1,10,0>
        
} // End of HEAD




       
/******************************* BODY ***************************************/

// Core
object{//Round_Cone( point A, radius A, point B, radius B, rounding radius, merge on) 
         Round_Cone( <0,14,0>, 1.5    , <0,18.5,0>, 0.5 , 0.15, 0)  
         
         texture{ pigment{ gradient <0,1,0>
                            color_map{
                                [ 0.0 color rgb<1,1,1> ]
                                [ 0.5 color rgb<1,1,1> ]
                                [ 0.5 color rgb<1,0.15,0> ]
                                [ 1.0 color rgb<1,0.15,0> ]
                               } // end color_map
                             scale 6.4
                           } // end pigment
                 //normal  { bumps 0.5 scale  0.005 }
                   finish  { phong 1 reflection 0.00 }
                   scale 0.25
                 } // end of texture -------------------
         scale<1,1,1>  rotate<0,0,0> translate<0,0.0,0>
      } // ----------------------------------------------------------- end Round_Cone 

                
                
// Left Shoulder
cone { <0,0,0>,0.4,<0,1,0>,0.2 
       //open
       texture{ pigment{ gradient <0,1,0>
                            color_map{
                                [ 0.5 color rgb<1,0.15,0> ]
                                [ 1.0 color rgb<1,0.15,0> ]
                                [ 0.0 color rgb<1,1,1> ]
                                [ 0.5 color rgb<1,1,1> ]
                               } // end color_map
                             scale 4
                           } // end pigment
                 //normal  { bumps 0.5 scale  0.005 }
                   finish  { phong 1 reflection 0.00 }
                   scale 0.25
                 } // end of texture -------------------

       scale <1,1,1> rotate<0,0,60> translate<1.3,17.5,0>         
     } // end of cone -------------------------------------



// Right Shoulder
cone { <0,0,0>,0.4,<0,1,0>,0.2 
       //open
       texture{ pigment{ gradient <0,1,0>
                            color_map{
                                [ 0.5 color rgb<1,0.15,0> ]
                                [ 1.0 color rgb<1,0.15,0> ]
                                [ 0.0 color rgb<1,1,1> ]
                                [ 0.5 color rgb<1,1,1> ]
                               } // end color_map
                             scale 4
                           } // end pigment
                 //normal  { bumps 0.5 scale  0.005 }
                   finish  { phong 1 reflection 0.00 }
                   scale 0.25
                 } // end of texture -------------------

       scale <1,1,1> rotate<0,0,-60> translate<-1.3,17.5,0>         
     } // end of cone -------------------------------------
     
      
// Left Arm
#declare Strength = 1; //(+ or -) strength of component's radiating density
#declare Radius1  = 0.15; //(0 < Radius) outer sphere of influence on other components
blob{
  threshold 0.01 // threshold (0.0 < threshold <= Strength) surface falloff threshold #
  cylinder { <0,0,0>,<0,1,0>, Radius1, Strength 

           texture{ pigment{ color rgb< 1, 0.5, 0.5>*1.4  } // very light red  
                        // normal { bumps 0.5 scale 0.05 }
                           finish { phong 1 reflection 0.00}
                      scale 0.25 
                    } // end of texture

           scale <1,1,1> rotate<30,0,60> translate<3,16.5,-0.5>
         } // end of cylinder -------------------------------------               
         
cylinder { <0,0.9,0>,<0,3,0>, Radius1, Strength 

           texture{ pigment{ color rgb< 1, 0.5, 0.5>*1.4  } // very light red  
                        // normal { bumps 0.5 scale 0.05 }
                           finish { phong 1 reflection 0.00}
                      scale 0.25 
                    } // end of texture

           scale <1,1,1> rotate<0,0,60> translate<3,16.5,0>
         }
 } //------------------------------------------------------ end of blob object             


// Right Arm
blob{
  threshold 0.01 // threshold (0.0 < threshold <= Strength) surface falloff threshold #
  cylinder { <0,0,0>,<0,1,0>, Radius1, Strength 

           texture{ pigment{ color rgb< 1, 0.5, 0.5>*1.4  } // very light red  
                        // normal { bumps 0.5 scale 0.05 }
                           finish { phong 1 reflection 0.00}
                      scale 0.25 
                    } // end of texture

           scale <1,1,1> rotate<30,0,-60> translate<-3,16.5,-0.5>
         } // end of cylinder -------------------------------------               
         
cylinder { <0,0.9,0>,<0,3,0>, Radius1, Strength 

           texture{ pigment{ color rgb< 1, 0.5, 0.5>*1.4  } // very light red  
                        // normal { bumps 0.5 scale 0.05 }
                           finish { phong 1 reflection 0.00}
                      scale 0.25 
                    } // end of texture

           scale <1,1,1> rotate<0,0,-60> translate<-3,16.5,0>
         }
 } //------------------------------------------------------ end of blob object
         
         
         
// Left Hand

// Right Hand
  








/****************************** LEGS *********************************************/

// Trousers


// Left Leg

// Right Leg

// Left foot

// Right foot
