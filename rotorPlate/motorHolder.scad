//holder for step motor 28BYJ-48
$fn = 80;

wallThickness = 2;

motorDiameter = 28;
motorDepth = 18.5;
motorOpening = 17.5;

boltDistance = 35;
boltDiameter = 4.08;

totalHeight = motorDepth + wallThickness;

module motorHolder(){
    translate([0, 0, totalHeight]){
        rotate([180, 0, 0]){
            difference(){
                union(){
                    hull(){
                        cylinder(d = motorDiameter+wallThickness, h = motorDepth+wallThickness);

                        translate([boltDistance/2., 0, 0]){
                            cylinder(d = boltDiameter+wallThickness, h = motorDepth+wallThickness);
                        }

                        translate([-boltDistance/2., 0, 0]){
                            cylinder(d = boltDiameter+wallThickness, h = motorDepth+wallThickness);
                        }
                    }
                }

                cylinder(d = motorDiameter, h = motorDepth);

                translate([-9, 9, 0]){
                    cube([18, 18, motorDepth]);
                }
                translate([boltDistance/2., 0, 0]){
                    cylinder(d = boltDiameter, h = motorDepth+wallThickness);
                }
                
                translate([-boltDistance/2., 0, 0]){
                    cylinder(d = boltDiameter, h = motorDepth+wallThickness);
                }
            }
        }
    }
}

//motorHolder();