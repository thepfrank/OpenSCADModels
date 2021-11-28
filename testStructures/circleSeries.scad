//with this model you can investigate your printer and material setup for geometrical accuracy regarding circular holes

//circle holes diameter start at 2 mm as for the FDM printer smaller does not seem meaningful

//the number of faces should be fairly high to ensure roundness of the holes and not have obstructions due to the geometry, default is 50
$fn = 50;

//the label text is engraved 2 mm deep into the surface, thus HEIGHT should not be smaller than 2 mm

//overall height
HEIGHT = 5;


module circleSeries(diameter = 2, height = 2, textOn = true){
    translate([0, 0, height-2]){
        linear_extrude(height = 2){
            for(i = [0:9]){
                if(textOn){
                    translate([i*23 ,0 , 0]){
                        text(text = str("0",".",i), size = 6, font = "Arial", halign = true);
                    }
                }
            }
        }
    }
    
    linear_extrude(height = height){
        for(i = [0:9]){
            translate([6+i*23, -10, 0]){
                circle(d = diameter + i/10.);
            }
        }
    }
    
    translate([0, 0, height-2]){
        linear_extrude(height = 2){    
            translate([-6, -13, 0]){
                text(text = str(diameter), font = "Arial", size = 6, halign = "right");
            }
        
        }
    }
}


difference(){
    translate([-18, -141, 0]){
        cube([242, 152, HEIGHT]);
    }
    
    circleSeries(diameter = 2, height = HEIGHT, textOn = true);

    translate([0, -15, 0]){
        circleSeries(diameter = 3, height = HEIGHT, textOn = false);
    }

    translate([0, -30, 0]){
        circleSeries(diameter = 4, height = HEIGHT, textOn = false);
    }
        
    translate([0, -45, 0]){
        circleSeries(diameter = 5, height = HEIGHT, textOn = false);
    }

    translate([0, -60, 0]){
        circleSeries(diameter = 6, height = HEIGHT, textOn = false);
    }
        
    translate([0, -75, 0]){
        circleSeries(diameter = 7, height = HEIGHT, textOn = false);
    }

    translate([0, -90, 0]){
        circleSeries(diameter = 8, height = HEIGHT, textOn = false);
    }

    translate([0, -105, 0]){
        circleSeries(diameter = 9, height = HEIGHT, textOn = false);
    }

    translate([0, -120, 0]){
        circleSeries(diameter = 10, height = HEIGHT, textOn = false);
    }
}