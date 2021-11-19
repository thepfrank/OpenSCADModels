$fn = 100;


//wallThickness = 1.3;
vaseHeight = 205;
/*
diameter1 = 23;
diameter2 = 22;
*/

module vase(diameter1, diameter2, wallThickness, vaseHeight){
    difference(){
        cylinder(d1 = diameter1, d2 = diameter2, h = vaseHeight);
        cylinder(d1 = diameter1-2*wallThickness, d2 = diameter2-2*wallThickness, h = vaseHeight);
    }
}

module lastVase(diameter1, diameter2, wallThickness, vaseHeight){
    difference(){
        cylinder(d1 = diameter1, d2 = diameter2, h = vaseHeight-diameter2/2);
        cylinder(d1 = diameter1-2*wallThickness, d2 = diameter2-2*wallThickness, h = vaseHeight-diameter2/2);
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

//original parameters from sith light saber blade
vase(25.5, 24.5, 1.3, vaseHeight);
vase(22.5, 21.4, 1.1, vaseHeight);
vase(19.8, 18.7, 1.1, vaseHeight);
vase(17.0, 15.8, 1.1, vaseHeight);
lastVase(14.1, 12.7, 1.1, vaseHeight);