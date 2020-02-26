//158.2 x 77.9 x 7.3 mm (6.23 x 3.07 x 0.29 in)

$fn = 100;
r = 3;
thk = 3;
w = 78 - r * 2;
h = 158 - r * 2;
d = 9 - r * 2;

module phone(w,h,d,r){
    minkowski(){
        cube([w,h,d], true);
    }
    translate([0, -h/2, 3])
    minkowski(){
        cube([w-8,d*3.5,d + 3], true);
        sphere(d = r * 2 - 2);
    }
    translate([((-w/2) - 2),h/2.5,0])
    minkowski(){
        cube([d+1,d+2,d-2], true);
        sphere(d = r * 2 - 2);
    }
    
    translate([((-w/2) - 2),h/3.7,0])
    minkowski(){
        cube([d+1,d*6+2,d-2], true);
        sphere(d = 4);
    }
    
    translate([40,h/2.7,0])
    minkowski(){
        cube([d+1,d*3+1,d-2], true);
        sphere(d = r * 2 - 2);
    }
    
    translate([20,h/2.2,-5])
    minkowski(){
        cube([20,3,1], true);
        sphere(d = 8);
    }
}

difference(){
    color("red")
    minkowski(){
        cube([w + thk,h + thk, d + thk], true);
        sphere (d = r * 2);
    }
    
    phone(w,h,d,r);
    
    translate([0,0,r])
    minkowski(){
        cube([w-4, h, d * 2], true);
        sphere (d = r * 2);
    }
}