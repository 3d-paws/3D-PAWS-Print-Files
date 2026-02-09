// universal clamp for pipe


$fn=100;

PR=16.2;    //enter pvc pipe radius here (for standard 1" PVC, PR=16.90;for 32mm PR= 16.2)

//pipe socket
difference(){
    cylinder(35,PR+5,PR+5);
    translate([0,0,-1]) cylinder(65,PR-0.25,PR);
    rotate([90,0,0]) translate([0,-20,-7.5]) cylinder(15,35,35);
    }

//hose clamp rim
translate ([0,PR+5,-30]) rotate([90,0,0]) difference(){
    cylinder((PR+5)*2,35,35); 
    translate([0,0,-5]) cylinder(60,30,30); 
    translate([-70,-173,-5]) cube([200,200,200]); 
    translate([13,-163,-5]) cube([200,200,200]); 
    translate([-63,-163,-5]) cube([50,200,200]); 
}