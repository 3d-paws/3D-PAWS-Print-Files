//single piece swivel with locknut


//file dependencies
use <large lock nut mod.scad>
use <levelling joint olive.scad>


$fn=100;
LPR=16.50; //enter pvc pipe radii here (for standard 1" PVC fitting, LPR=16.90; for standard 1" PVC ppipe, LPR=13.80;for standard 3/4" CPVC, 8=11.2; For 32mm fitting LPR = 16.5 for Malawi pipe 13.3)



//fitting adapter
translate([0,0,34]) union(){
    difference(){
        cylinder(15,LPR,LPR-0.25);
        translate([0,0,-1]) cylinder(25,8,8);
        translate ([0,0,-0.25])cylinder (2,8+1,8);
        }

    difference(){
        cylinder(3,LPR+2,LPR+2);
        translate([0,0,-1]) cylinder(25,8,8);
        translate ([0,0,-0.25])cylinder (2,9,8);
        }
}


//lock nut
translate([0,0,20])union(){
    rotate ([180,0,0])scale([3.5,3.5,3.5])large_lock_nut();    
    translate([0,0,0])rotate ([180,0,0])union(){
        difference(){
            translate([0,0,-1]) cylinder(5,25,25);
            translate([0,0,-5]) cylinder(40,17,17);
            translate([0,0,7])sphere(r=18);
            }
    
    difference(){
        translate([0,0,0]) cylinder(4,25,25);
        translate([0,0,-5]) cylinder(40,20,20);
        translate([0,0,7]) sphere(r=18);
        }
    }
}

//olive swivel
translate([0,0,9])olive();

//cpvc neck
difference () {
    translate([0,0,-1]) cylinder(50,12,12);
    translate([0,0,-5])cylinder(160,8,8);
    }
