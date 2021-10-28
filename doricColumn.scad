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
                translate([radius1-height/2, 0, 0]){
                    circle(r = height/2.);
                }
            }
        }
        translate([0, 0, -height/2.]){
            cylinder(r = radius2, h = height/2.);
        }
    }
}

module capital(height = 9, radius1 = 9, radius2 = 8){
    height0 = 0.20*height;
    height1 = 0.20*height;
    height2 = 0.03*height;
    height3 = 0.50*height;
    height4 = 0.07*height;
        
    translate([-radius1, -radius1, height1+height2+height3+height4+height0/2]){
        cube([2*radius1, 2*radius1, height0]);
    }
    
    translate([0, 0, height2+height3+height4+height1/2.]){
        echinus(height = height1, radius1 = radius1, radius2 = radius2);
    }

    hull(){
        translate([0, 0, height3+height4+height2]){
            rotate_extrude(angle = 360, $fn = 70){
                translate([radius2, 0, 0]){
                    circle(r = height2);
                }
            }
        }
    }

    translate([0, 0, 0]){
        cylinder(r = radius2, h = height3+height4, $fn = 70);
    }
    
    hull(){
        translate([0, 0, height4]){
            rotate_extrude(angle = 360, $fn = 70){
                translate([radius1*0.9, 0, 0]){
                    circle(r = height4);
                }
            }
        }
    }
}


module doricColumn(radius = 7, shaftHeight = 50, headHeight = 7){
    translate([0, 0, shaftHeight]){
        capital(height = headHeight, radius1 = radius, radius2 = 6/7*radius);
        }
    columnShaft(radius = 6/7*radius, height = shaftHeight);
}

//doricColumn();

//capital();