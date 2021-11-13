include <motorCoupler.scad>;
$fn= 120;

//make the topPlate slightly bigger than the motorCoupler by 1%
factor = 1.01;
wallThickness = 2; 

topDiameter = 150;
topHeight = 6;

difference(){
    union(){
        translate([0, 0, topHeight]){
            rotate([180, 0, 0]){
                difference(){
                    cylinder(d = topDiameter, h = topHeight);
                    cylinder(d = topDiameter-wallThickness, h = topHeight-wallThickness);
                }
            }
        }
        cylinder(d = 23, h = topHeight);
    }
    translate([0, 0, -11]){
        scale([factor, factor, 2]){
            motorCoupler();
            }
    }
}
    


/*
difference(){
    cylinder(d = 23, h = 6);

    
}
*/