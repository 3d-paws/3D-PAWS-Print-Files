//pipe to smaller pipe adapter


$fn=100;

OPR=13.30;  //enter pvc pipe radius here (for standard 1" PVC, outer radius OPR=13.30)
IPR=11.2;   //for 3/4" CPVCinner radius IPR=11.20

difference () {
    cylinder(15,OPR,OPR);
    translate([0,0,-1]) cylinder(25,IPR,IPR);
    translate ([0,0,-0.25]) cylinder (2,IPR+1,IPR);
    }

difference () {
    cylinder(3,OPR+2,OPR+2);
    translate([0,0,-1]) cylinder(25,IPR,IPR);
    translate ([0,0,-0.25]) cylinder (2,IPR+1,IPR);
    }

