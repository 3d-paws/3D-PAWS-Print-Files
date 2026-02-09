//fitting to pipe adapter


$fn=100;

LPR=16.90;  //enter larger pvc pipe radii here (for standard 1" PVC, LPR=16.90)
SPR=11.2;   //enter smaller pvc pipe radii here (for standard 3/4" CPVC, SPR=11.2)

difference () {
    cylinder(15,LPR,LPR);
    translate([0,0,-1]) cylinder(25,SPR,SPR);
    translate ([0,0,-0.25])cylinder (2,SPR+1,SPR);
    }

difference () {
    cylinder(3,LPR+2,LPR+2);
    translate([0,0,-1])cylinder(25,SPR,SPR);
    translate ([0,0,-0.25])cylinder (2,SPR+1,SPR);
    }

