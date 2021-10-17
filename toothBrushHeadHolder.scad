module halfSphere(r = 20){
    difference() { 
    sphere(r=r); translate([0, 0, -r])
    cube(2*r, center=true);
    }
}

module half(){
    difference(){
        cube([25, 30, 4]);
        translate([12.5, 15, 0]) #cylinder(d1 = 10, d2 = 18, h = 4);
        translate([12.5, 10, 0]) cube([12.5, 10, 4]);
    }
    
    translate([12.5, 38, 0]) cylinder(r = 12.5, h = 4);
    translate([12.5, 38, 0]){
        rotate([180, 0, 0]){
            halfSphere(r = 12.5);
        }
    }
    translate([12.5, 38, -81]) cylinder(r = 8, h = 85);
    translate([12.5, 38, -84]) halfSphere(16);
}


half();
mirror(v = [0 ,90 ,0]) half();