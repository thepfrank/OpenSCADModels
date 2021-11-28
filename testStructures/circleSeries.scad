$fn = 50;


module circleSeries(diameter = 2, height = 2, textOn = true){
    linear_extrude(height = height){
        for(i = [0:9]){
            
            if(textOn){
                translate([i*25 ,0 , 0]){
                    text(text = str("0",".",i), size = 8, font = "Arial", halign = true);
                }
            }
            
            translate([8+i*25, -10, 0]){
                circle(d = diameter + i/10.);
                }
        }
        
        translate([-8, -14, 0]){
            text(text = str(diameter), font = "Arial", size = 8, halign = "right");
        }
    
    }
}

circleSeries();

translate([0, -15, 0]){
    circleSeries(diameter = 3, textOn = false);
    }

translate([0, -30, 0]){
    circleSeries(diameter = 4, textOn = false);
    }
    
translate([0, -45, 0]){
    circleSeries(diameter = 5, textOn = false);
    }

translate([0, -60, 0]){
    circleSeries(diameter = 6, textOn = false);
    }
    
translate([0, -75, 0]){
    circleSeries(diameter = 7, textOn = false);
    }

translate([0, -90, 0]){
    circleSeries(diameter = 8, textOn = false);
    }

translate([0, -105, 0]){
    circleSeries(diameter = 9, textOn = false);
    }

translate([0, -120, 0]){
    circleSeries(diameter = 10, textOn = false);
    }