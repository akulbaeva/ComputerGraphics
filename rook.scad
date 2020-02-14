$fn = 100;
error = 0.1;

difference(){
    difference(){
        
        import("rook.stl");
        cube([4+error,35+error,6], center=true);
        cube([35 +error,4+error,6], center=true);
    
        translate([0, 0, 78])

        for(i = [1 : 5]){
            
            rotate([0, 0, 72 * i]){
            cube([4 + error, 45 + error, 20],center = true);
            }
        }   
    }
            
    translate([0, 0, 78])

    cylinder(h = 20, r = 15, center = true);
            
}


translate([60, 0 , 1])

union() {
    cylinder(h=4, r=22.5, center = true);
    
    
    translate([0,0,1])
    cube([4,35,6], center=true);
    
    translate([0,0,1])
    cube([35,4,6], center=true);
    
}