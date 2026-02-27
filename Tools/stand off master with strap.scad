$fn=100;

//tripod radii (R1) are 17.5, 19, 21
//PVC radii (R2) are 16.5 (1" pipe), 20 (fitting)
//3/4 GI - 13.5

//cube offset (CuO) = 5
//center offset (CeO) = 19 + 20 + 10 = 49
//cube length (CL) = CeO + CuO*2


R1 = 20; 
R2 = 16;
CuO = 5;
CeO = CuO+R1+R2+3;
CL = CeO + CuO*2;


//////////////////////////////////////////////////////////////////////////
difference(){
    translate([-CuO,-CeO/2,0]) cube([CL,CeO,15]);
    translate([0,0,-1]) cylinder(20,R1,R1);
    translate([CeO,0,-1])cylinder(20,R2,R2);
    }

translate([0,0,14]) difference(){
    translate([-CuO,(-CeO/2)-3,0]) cube([CL,CeO+6,3]);
    translate([0,0,-1]) cylinder(20,R1,R1);
    translate([CeO,0,-1])cylinder(20,R2,R2);
    }

translate([0,0,-2])difference(){
    translate([-CuO,(-CeO/2)-3,0]) cube([CL,CeO+6,3]);
    translate([0,0,-1]) cylinder(20,R1,R1);
    translate([CeO,0,-1])cylinder(20,R2,R2);
    }

