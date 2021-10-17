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

columnShaft();