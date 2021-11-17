$fn = 100;

/*
wallThickness = 1.3;
vaseHeight = 185;

diameter1 = 23;
diameter2 = 22;
*/

module vase(diameter1, diameter2, wallThickness, vaseHeight){
    difference(){
        cylinder(d1 = diameter1+wallThickness, d2 = diameter2+wallThickness, h = vaseHeight);
        cylinder(d1 = diameter1, d2 = diameter2, h = vaseHeight);
    }
}

module lastVase(diameter1, diameter2, wallThickness, vaseHeight){
    difference(){
        cylinder(d1 = diameter1+wallThickness, d2 = diameter2+wallThickness, h = vaseHeight-diameter2/2);
        cylinder(d1 = diameter1, d2 = diameter2, h = vaseHeight-diameter2/2);
    }
    translate([0, 0, vaseHeight-diameter2/2]){
        #difference(){
            sphere(d = diameter2+wallThickness);
            translate([0, 0, -(diameter2+wallThickness)]){
                cube(2*(diameter2+wallThickness), center = true);
            }
        }
    }
}

vase(25.5, 24.5, 1.3, 185);
vase(23, 22, 1.3, 185);
vase(20, 19.3, 1.2, 185);
vase(17.7, 16.6, 1.1, 185);
vase(14.7, 13.7, 1.1, 185);
lastVase(12, 9.8, 1.1, 185);