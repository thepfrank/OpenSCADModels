include <motorCoupler.scad>;
$fn= 60;

//make the topPlate slightly bigger than the motorCoupler by 1%
factor = 1.01;

difference(){
    cylinder(d = 22, h = 6);

    translate([0, 0, -11]){
        scale([factor, factor, 2]){
            motorCoupler();
            }
    }
}