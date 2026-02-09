//inner radius test piece


//enter pvc pipe radii here (for standard 1" PVC fitting, LPR=16.90; for standard 1" PVC pipe, LPR=13.80;for standard 3/4" CPVC, SPR=11.2; For 32mm (Malawi, Zimbabwe) LPR = 16.5 for fittings; LPR = 13.3 for pipe)

LPR=13.3; // large pipe radius
SPR=8;    // small pipe radius

$fn=100;
//adapter
union(){
difference(){
    cylinder(15,LPR-0.25,LPR);
    translate([0,0,-1]) cylinder(25,LPR-2,LPR-2);
    }
}