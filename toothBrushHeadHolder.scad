module halfSphere(){
    difference() { 
    sphere(r=20); translate([0, 0, -20])
    cube([40, 40, 40], center=true);
    }
}

module half(){
    difference(){
        cube([25, 30, 4]);
        translate([12.5, 15, 0]) #cylinder(d1 = 10, d2 = 18, h = 4);
        translate([12.5, 10, 0]) cube([12.5, 10, 4]);
    }
    
    translate([12.5, 38, -81]) cylinder(r1 = 12.5, r2 = 12.5, h = 85);
    translate([12.5, 38, -84]) halfSphere();
}


half();
mirror(v = [0 ,90 ,0]) half();