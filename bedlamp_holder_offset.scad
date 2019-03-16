fudge = 0.1;

HEIGHT = 5;
SCALE = 3.58;

//scale([SCALE,SCALE,HEIGHT])
//color("orange")
//bed_holder();
color("pink")
bed_holder_alt();
translate([26.5,60,0])
scale([SCALE,SCALE,HEIGHT])
color("green")
lamp_holder();

color("pink")
lamp_holder_alt();

extra_support();
extra_support_mini();


module poly_rect37817(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-2.006730,48.513471],[14.457087,48.513471],[14.457087,54.094666],[-2.006730,54.094666]]);
  }
}

module poly_rect3779(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-14.457087,-54.094666],[-2.006729,-54.094666],[-2.006729,54.094657],[-14.457087,54.094657]]);
  }
}

module poly_rect3781(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-2.006730,-54.094666],[14.457087,-54.094666],[14.457087,-48.513471],[-2.006730,-48.513471]]);
  }
}

module bed_holder_alt(){
    distance = 16.5; //16.5
    thickness = 5;
    height = 32;
    top_lenght = distance + 2*thickness;
    translate([0,-thickness,0])
    union(){
        translate([-height/2,distance/2+thickness,0])
        cube([height,thickness,5], false);        
        
        translate([-height/2,-distance/2,0])
        cube([height,thickness,5], false);                
        
        translate([height/2-thickness, -top_lenght/2+thickness, 0])
        cube([thickness,top_lenght,5], false);                
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
    distance = 30;
    
    cube([10,10,10], false);
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