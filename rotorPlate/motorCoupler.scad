$fn = 60;

module motorShaft(height = 5){
    difference(){
        cylinder(d = 5, h = height, center = true);
        translate([4, 0, 0]){
            cube(height, center = true);
        }
        translate([-4, 0, 0]){
            cube(height, center = true);
        }
    }
}

module motorCoupler(){
    translate([0, 0, 8]){
        rotate([180, 0, 0]){
            difference(){
                cylinder(d = 10, h = 5);
                translate([0, 0, 2.5]){
                    motorShaft();
                }
            }

            translate([0, 0, 5]){
                resize([20, 10, 3]){
                    cylinder(d = 20, h =3);
                }
                resize([10, 20, 3]){
                    cylinder(d = 20, h =3);
                }
            }
        }
    }
}

motorCoupler();