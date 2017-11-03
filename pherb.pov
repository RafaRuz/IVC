#include "colors.inc"
#include "stones.inc"
#include "textures.inc"
#include "shapes.inc"
#include "metals.inc"
#include "woods.inc"

#declare c = <0,0,0>;
#declare head_size = 7;

//Debugging variables
#declare camera_left_side = <-10,-1,0>;
#declare camera_right_side = <10,-1,0>;
#declare camera_center_side = <0,5,-15>;
#declare camera_up_side = <0,20,0>;

//Face factions positions variables
#declare right_eye_position = c+<0.6,4,-0.9>;
#declare left_eye_position = c+<-0.4,4,-0.9>;
#declare nose_position_corner1 = left_eye_position+<-0.2,-2,-1>;
#declare nose_position_corner2 = right_eye_position+<0,-0.6,0>;

camera{
    location camera_center_side
    look_at<0,5,0>
}

light_source{
    <0,20,-20>,
    color White
}

background{color Cyan}


//Ferb's head base
cone{
    c+<0,head_size,0>,1.2
    c, 0.7
    texture{
        pigment{color rgb< 1, 0.5, 0.5>*1.4}
    }
}


//Right eye
sphere{
    right_eye_position
    0.5
    pigment {White}
}

//Left eye
sphere{
    left_eye_position
    0.7
    pigment{White}

}

//Mouth
box{
    nose_position_corner1
    nose_position_corner2
    texture{
        pigment{color rgb< 1, 0.5, 0.5>*1.4}
    }
       
}

