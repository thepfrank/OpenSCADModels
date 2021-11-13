include <motorHolder.scad>
$fn = 120;

wallThickness = 2;
bottomDiameter = 80;
bottomHeight = 20.5;

difference(){
    translate([0, 0, bottomHeight]){
        rotate([180, 0, 0]){
            difference(){
                cylinder(d = bottomDiameter, h = bottomHeight);
                cylinder(d = bottomDiameter-wallThickness, h = bottomHeight-wallThickness);
            }
        }
    }



    translate([-2.5, -bottomDiameter/2., wallThickness]){
        cube([5, 6, bottomHeight-wallThickness]);
    }
}


translate([0, -8, 0]){
    motorHolder();
}

translate([-5.5, -bottomDiameter/2.5, wallThickness]){
    intersection(){
        cylinder(d1 = 5, d2 = 10, h = 4);
        translate([0, -2.5, 0]){
            cube([5, 4, 4]);
        }
    }
}

mirror([1, 0, 0]){
    translate([-5.5, -bottomDiameter/2.5, wallThickness]){
        intersection(){
            cylinder(d1 = 5, d2 = 10, h = 4);
            translate([0, -2.5, 0]){
                cube([5, 4, 4]);
            }
        }
    }
}


/*
translate([0, 30, 0]){
    color("red") cube([75, 53, 12], center = true);
}
*/