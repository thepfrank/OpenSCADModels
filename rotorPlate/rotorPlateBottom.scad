include <motorHolder.scad>
$fn = 80;

wallThickness = 2;
bottomDiameter = 100;
bottomHeight = 20;

translate([0, 0, bottomHeight]){
    rotate([180, 0, 0]){
        difference(){
            cylinder(d = bottomDiameter, h = bottomHeight);
            cylinder(d = bottomDiameter-wallThickness, h = bottomHeight-wallThickness);
        }
    }
}

/*
translate([0, 30, 0]){
    color("red") cube([75, 53, 12], center = true);
}
*/