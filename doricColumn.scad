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

//columnShaft();

module echinus(height = 3, radius1 = 12, radius2 = 10){
    hull(){
        translate([0, 0, height/2.]){
            rotate_extrude(angle = 360, $fn = 50){
                translate([radius1, 0, 0]){
                    circle(r = height/2.);
                }
            }
        }
        translate([0, 0, -height/2.]){
            #cylinder(r = radius2, h = height/2.);
        }
    }
}

echinus();