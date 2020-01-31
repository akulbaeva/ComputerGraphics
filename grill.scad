// sizes:
w = 90;
h = 90;
d = 3;

// holes:
hw = 5;
hw_gap = 5;
count = w / (hw + hw_gap);

difference(){
    cube([w,h,d]);
    
    for(i = [1 : count]){
        if(i < count / 2 + 0.5){
             color("red")
             cubes(i);
            }
        if (i==count/2 + 0.5) {
             color("green")
             cubes(i);
            }
        else {
             color("green")
             otherCube(i);
            }
    }
}

module cubes(var) {
     translate([var*(hw+hw_gap)+var*6, hw_gap, -1])
     rotate([0,0,45])
     cube([hw, (hw_gap*2)*(var*2), d + 2]);
    }
    
module otherCube(var) {
    translate([w-hw_gap, (var)*(hw+hw_gap)+(var)*6, -1])
    rotate([0,0,45])
    cube([hw, hw_gap*4*(count-var-3.65), d+2]);
    
    }  