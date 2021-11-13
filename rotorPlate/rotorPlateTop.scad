include <motorCoupler.scad>;
$fn= 120;

//make the topPlate slightly bigger than the motorCoupler by 1%
factor = 1.01;

wallThickness = 2; 

difference(){
    cylinder(d = 150, h = 6);
    cylinder(d = 150-wallThickness*2., h = 6-wallThickness);
}

difference(){
    cylinder(d = 23, h = 6);

    translate([0, 0, -11]){
        scale([factor, factor, 2]){
            motorCoupler();
            }
    }
}