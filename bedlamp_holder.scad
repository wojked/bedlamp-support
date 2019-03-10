fudge = 0.1;

HEIGHT = 5;

color("orange")
bed_holder(HEIGHT);
translate([25,40,0])
color("green")
lamp_holder(HEIGHT);

module poly_rect38059(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-21.402370,-14.284470],[11.844033,-14.284470],[11.844033,-8.034546],[-21.402370,-8.034546]]);
  }
}

module poly_rect380597(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-21.402370,8.034553],[11.844033,8.034553],[11.844033,14.284477],[-21.402370,14.284477]]);
  }
}

module poly_rect3822(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[11.844030,-25.073326],[21.402370,-25.073326],[21.402370,25.073326],[11.844030,25.073326]]);
  }
}

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

module bed_holder(height){
    SCALE = 3.58;    
    scale([SCALE,SCALE,height])
    union() {
        poly_rect38059(1);
        poly_rect380597(1);
        poly_rect3822(1);    
    }
}

module lamp_holder(height){
    SCALE = 3.58;    
    scale([SCALE,SCALE,height])
    union() {    
        poly_rect37817(1);
        poly_rect3779(1);
        poly_rect3781(1);      
    }        
}
