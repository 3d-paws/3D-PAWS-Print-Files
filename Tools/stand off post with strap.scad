$fn=100;

//Stand off for quick deploy stations but also holds everything in place for 

//tripod radii (R1) are 17.5, 19, 21
//PVC radii (R2) are 16.5, 20
//2" Galvanized Post is 50.8
//2" PVC radii is 30

//center offset (CeO) = 19 + 20 + 10 = 49

//cube length (CL) = CeO + CuO*2
//cube offset (CuO) = 5


CuO = 5;
R1 = 20; 
R2 = 30;
CeO = CuO+R1+R2;
CL = CeO + CuO*2;

////////////////////////////////////////////////////////////////////////////
intersection(){
    difference(){
        union(){
            
            // main block
            difference(){
                translate([-CuO,-CL,0]) cube([CL,CL*2,15]);
                translate([0,0,-1]) cylinder(20,R1,R1);
                translate([CeO,0,-1]) cylinder(20,R2,R2);
                }
            // bottom hose clamp holder
            translate([0,0,14]) difference(){
                translate([-CuO,-CL,0]) cube([CL,CL*2,3]);
                translate([0,0,-1]) cylinder(20,R1,R1);
                translate([CeO,0,-1]) cylinder(20,R2,R2);
                }
            // top hose clamp holder
            translate([0,0,-3]) difference(){
                translate([-CuO,-CL,0]) cube([CL,CL*2,3]);
                translate([0,0,-1]) cylinder(20,R1,R1);
                translate([CeO,0,-1]) cylinder(20,R2,R2);
                }
        }
        
        // creates the hose clamp cut and oval shape
        difference(){
        translate([CeO-15,0,0])
        scale([1.70, 1, 1])  // Stretches the cylinder in X direction
            cylinder(h = 14, r = R2+9);
        
        translate([CeO-15,0,-0.1])
        scale([1.70, 1, 1])  // Stretches the cylinder in X direction
            cylinder(h = 14.2, r = R2+7);
        }
    
    }

    // creates oval shape
    translate([CeO-15,0,-3])
    scale([1.7, 1, 1])  // Stretches the cylinder in X direction
        cylinder(h = 20, r = R2+9);
}

