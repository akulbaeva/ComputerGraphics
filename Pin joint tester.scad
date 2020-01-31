$fn = 100;

x = 25;
y = 10;
z = 1;

h = 3;
r = 1.75/2 ;

xHole = 2;
yHole = 3.5;


difference(){
    cube([x,y,z]);
 
    for(i = [1 : 6]){
        translate([yHole * i, 5, -1])        
        cylinder(h, r + i * 0.25);
    }
        
}
