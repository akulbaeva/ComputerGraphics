// sizes:
w = 50;
h = 50;
d = 3;

// holes:
hw = 5;
hw_gap = 4;
count = w / (hw + hw_gap);

difference(){
    cube([w,h,d]);
    
    for(i = [1 : count]){
        for(j = [1 : count]){
        color ("blue")
        translate([hw_gap * i * 2,hw_gap * j * 2, -1])
        cube(hw);
        }
    }
}