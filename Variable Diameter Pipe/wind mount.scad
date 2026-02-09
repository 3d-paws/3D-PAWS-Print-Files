//wind mount (fitting to wind sensors)


$fn=100;

LPR=16.5;
SPR=8;      //enter pvc pipe radii here (for standard 1" PVC fitting, LPR=16.90; for standard 1" PVC pipe, LPR=13.80; for standard 3/4" CPVC, SPR=11.2; for 32mm (Malawi, Zimbabwe) LPR = 16.5 for fittings; 13.3 for pipe)



//fitting adapter
union(){
    difference(){
        cylinder(15,LPR-0.25,LPR);
        translate([0,0,-1]) cylinder(25,SPR,SPR);
        }

    translate([0,0,12]) difference(){
        cylinder(3,LPR+2,LPR+2);
        translate([0,0,-1])cylinder(25,SPR,SPR);
        }
}

//wind mount piece (cpvc)
difference(){
    translate([0,0,0]) cylinder(50,11,11);
    translate([0,0,-5]) cylinder(160,SPR,SPR);
    }
