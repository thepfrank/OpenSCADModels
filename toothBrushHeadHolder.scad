$fn = 50;
width = 25; //only works in a limited range, best at 25

module halfSphere(r = 20){
    difference() { 
    sphere(r=r); translate([0, 0, -r])
    cube(2*r, center=true);
    }
}

module pillar(radius = 10, height = 85){
    linear_extrude(height = height, center = false, twist = 360, slices = 2*height, $fn = 100){
        translate([0, 0, 0]){
            square(radius, center = true);
        }
    }
}

module half(){
    difference(){
        cube([width, 30, 4]);
        translate([width/2., 15, 0]) cylinder(d1 = 10, d2 = 18, h = 4);
        translate([width/2., 10, 0]) cube([width/2., 10, 4]);
    }
    
    translate([width/2., 38, 0]) cylinder(r = width/2., h = 4);
    translate([width/2., 38, 0]){
        rotate([180, 0, 0]){
            halfSphere(r = width/2.);
        }
    }
    translate([width/2., 38, -81]) pillar(radius = 7.5, height = 85);
    translate([width/2., 38, -84]) halfSphere(15);
}


half();
mirror(v = [0 ,90 ,0]) half();