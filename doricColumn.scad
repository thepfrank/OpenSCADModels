module columnShaft(radius = 10, height = 50){
    numberFlutes = 20.;
    radiusFluted = radius/10*1.2;
    difference(){
        cylinder(r = radius, h = height, $fn = 50);
        for( i = [0:numberFlutes-1] ){
            rotate(360/numberFlutes *i, [0, 0, 1]){
                translate([0, radius, 0]){
                        cylinder(r = radiusFluted, h = height, $fn = 30);
                }
            }
        }
    }
}

module echinus(height = 2, radius1 = 12, radius2 = 10){
    hull(){
        translate([0, 0, height/2.]){
            rotate_extrude(angle = 360, $fn = 70){
                translate([radius1, 0, 0]){
                    circle(r = height/2.);
                }
            }
        }
        translate([0, 0, -height/2.]){
            cylinder(r = radius2, h = height/2.);
        }
    }
}

module capital(height = 5, radius1 = 12, radius2 = 10){
    height1 = 0.4*height;
    height2 = 0.1*height;
    height3 = 0.5*height;
    
    translate([0, 0, height1/2.]){
        echinus(height = height1, radius1 = radius1, radius2 = radius2);
    }

    hull(){
        translate([0, 0, -height2]){
            rotate_extrude(angle = 360, $fn = 70){
                translate([10, 0, 0]){
                    circle(r = height2);
                }
            }
        }
    }

    translate([0, 0, -(height2+height3)]){
        cylinder(r = 10, h = height3, $fn = 70);
    }
}

translate([0, 0, 53]){
    capital();
    }
columnShaft();