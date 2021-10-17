module columnShaft(radius = 10, height = 50){
    radiusFluted = radius/10*1.2;
    difference(){
        cylinder(r = radius, h = height, $fn = 50);
        for( i = [0:19] ){
            rotate(360/20. *i, [0, 0, 1]){
                translate([0, radius, 0]){
                        cylinder(r = radiusFluted, h = height, $fn = 30);
                }
            }
        }
    }
}

columnShaft();