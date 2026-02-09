// rain gauge upper cover clamp stabilizer



$fn=100;

PR=16.20; //enter pvc pipe radius here (for standard 1" PVC, PR=16.90; for 32mm PR=16.2)

//hose clamp rim
difference(){
    cylinder (20,47.7,47.7); 
    translate([0,0,-1]) cylinder(50,44.7,44.7); 
    translate([-70,-157,-5]) cube([200,200,200]); 
    translate([-35,0,-5]) cube([20,60,50]);
    translate([15,0,-5]) cube([20,60,50]);
    }

//hose clamp slot
difference () {
    translate([-15,45,0]) cube([30,10,30]);
    translate ([0,0,3]) difference(){
        cylinder(44,50,50); 
        translate([0,0,-1]) cylinder(50,47.7,47.7); 
        }
    translate ([0,0,20]) cylinder(44,50,50); 
}

//pipe socket
translate([0,75,30]) rotate([90,0,0]) difference(){
    cylinder(25,PR+5,PR+5); 
    translate([0,0,-1]) cylinder(16,PR,PR-0.25);
    } 