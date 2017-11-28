#include "colors.inc"
#include "stones.inc"
#include "textures.inc"
#include "shapes.inc"
#include "metals.inc"
#include "woods.inc"

#declare c = <0,0,0>;

//Debugging variables                            
#declare camera_left_side = <-15,-1,0>;
#declare camera_right_side = <10,-1,0>;
#declare camera_center_side = <0,0,-18>;
#declare camera_up_side = <0,20,0>;

//Physiognomy
#declare head_size = 7;
#declare body_size = 5;

//Face factions positions variables
#declare face_up_position = c+<0,head_size,0>;
#declare face_down_position = c;
#declare radius_up_face = 1.3;
#declare radius_down_face = 0.8;
#declare right_eye_position = c+<0.6,4,-0.9>;
#declare left_eye_position = c+<-0.4,4,-0.9>;
#declare eye_radius = 0.75;
#declare nose_position_corner1 = left_eye_position+<-0.3,-2,-1>;
#declare nose_position_corner2 = right_eye_position+<0.1,-0.6,0>;
#declare base_hair_position = face_up_position+<0,0.1,0>;

//Body position variables
#declare body_up_position = face_down_position;
#declare body_down_position = body_up_position+<0,-body_size,0>;
#declare arm_size = 4;
#declare arm_left_up_position = body_up_position+<-0.5, -0.3, 0>;
#declare arm_left_down_position = arm_left_up_position+<-arm_size,0,0>;
#declare arm_radius = 0.15;
#declare arm_right_up_position = body_up_position+<0.5,-0.3,0>;
#declare arm_right_down_position = arm_right_up_position+<arm_size,0,0>;

//Color variables
#declare skin_color = color rgb< 1, 0.5, 0.5>*1.4;

camera{
    location camera_center_side
    look_at<0,5,0>
}

light_source{
    <0,10,-23>,
    color White
}

background{color Cyan}

union{       

    //Ferb's head base
    cone{
        face_up_position,radius_up_face
        face_down_position, radius_down_face
        texture{
            pigment{color rgb< 1, 0.5, 0.5>*1.4}
        }
    }
    
    
    union{
    
        //Right eye
        sphere{
            right_eye_position
            eye_radius-0.2
            pigment {White}
        }
        
        sphere{
            right_eye_position+<0,0,-0.6>
            eye_radius-0.6
            pigment{Black}
        }
    
    }
    //Left eye
    union{
        
        sphere{
            left_eye_position
            eye_radius
            pigment{White}
        
        }
        
        sphere{
            left_eye_position+<0,0,-0.8>
            eye_radius-0.6
            pigment{Black}
        } 
    }
    
    //Nose
    box{
        nose_position_corner1
        nose_position_corner2
        texture{
            pigment{skin_color}
        }
           
    }
    
    //body
    cone{
        body_up_position, radius_down_face+0.1
        body_down_position, radius_down_face+0.1
        texture{
            pigment{skin_color}
        }
    }
    
    //Hair
    union{
    
        cylinder{
            face_up_position,
            base_hair_position,
            radius_up_face
            pigment{color Green}
        }
    }
    
    //Left arm
    cylinder{
        arm_left_up_position,
        arm_left_down_position,
        arm_radius
        texture{
            pigment{skin_color}
        }
    }
    
    //Right arm
    cylinder{
        arm_right_up_position,
        arm_right_down_position,
        arm_radius
        texture{
            pigment{skin_color}
        }
    }
    
    //Left leg
    
    //Right leg
}
