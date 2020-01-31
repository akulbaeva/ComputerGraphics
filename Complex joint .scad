$fn = 100;
error = 0.1;
x = 20;
y = 20; 
h = 6;
n = 6;


difference() {
    cube([x,y,h * 2], center = true);
    
    translate([0, 0 , h])
    cylinder(d = y/2 + error, h = h, center = true);
    
    for (i=[1:n]) {
        rotate([0, 0, i*360/n])
        translate([x/4-2, -2 , h/2])
        cube([4 + error, 4 + error, h]);
        }
}
   
color("cyan")
translate([30, 0,0])    
union() {
    cube([x,y,h * 2], center = true);
    
    translate([0, 0 , h])
    cylinder(d = y/2 , h = h, center = true);
    
    for (i=[1:n]) {
        rotate([0, 0, i*360/n])
        translate([x/4-2, -2 , h/ 2])
        cube([4, 4, h]);
        }    
}