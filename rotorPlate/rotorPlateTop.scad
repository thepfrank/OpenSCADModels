include <motorCoupler.scad>;
$fn= 60;

difference(){
    cylinder(d = 22, h = 5);

    translate([0, 0, -12]){
        scale([1.01, 1.01, 2]){
            motorCoupler();
            }
    }
}