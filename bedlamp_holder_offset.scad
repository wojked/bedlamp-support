$fn = 128;
fudge = 0.1;

HEIGHT = 5;
SCALE = 3.58;

color("green")
bed_holder_new();

color("pink")
translate([26.5,60,0])
lamp_holder_alt();

extra_support();
extra_support_mini();

module rounded_corners(width, height, depth, corner_curve){
    x_translate = width-corner_curve;
    y_translate = height-corner_curve;     
    
    hull(){
            translate([-x_translate/2, -y_translate/2, 0])
            cylinder(depth,corner_curve/2, corner_curve/2, true);    
            
            translate([-x_translate/2, y_translate/2, 0])
            cylinder(depth,corner_curve/2, corner_curve/2, true);

            translate([x_translate/2, y_translate/2, 0])
            cylinder(depth,corner_curve/2, corner_curve/2, true);        
            
            translate([x_translate/2, -y_translate/2, 0])
            cylinder(depth,corner_curve/2, corner_curve/2, true);        
    }        
}

module bed_holder_new(){
    distance = 16.5; //16.5
    thickness = 5;
    height = 32;
    top_lenght = distance + 2*thickness;
    translate([0,0,5/2])
    difference(){
        rounded_corners(height, top_lenght, 5, 5);            
        translate([-thickness,0,0])
        cube([height, distance, 5*2], true);
    }
}

module lamp_holder(){
    difference(){        
        union() {    
            poly_rect37817(1);
            poly_rect3779(1);
            poly_rect3781(1);      
       };
       translate([3,0,0])
       cube([12,25,10], true);     
    }    
}

module lamp_holder_alt(){
    width = 109;
//    translate([30 - 6/2, width/2 + 11/2 , 4])
    translate([0,0,5/2])
    union(){
        difference(){            
            rounded_corners(30, width, 5, 5);
            translate([5,0,0])
            cube([30, width-2*5, 5*2], true);
        }
        
        translate([-3,-(width-15)/2,0])
        rounded_corners(5, 14, 5, 5);
        
        translate([-3,(width-15)/2,0])
        rounded_corners(5, 14, 5, 5);        
    }
}

module extra_support(){
       translate([-15,10,0])    
       rotate([0,0,-16])
       cube([3,97,5], false);    
}

module extra_support_mini(){
       translate([2,10,0])    
       rotate([0,0,-16])
       cube([3,38,5], false);       
}
