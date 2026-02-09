// modular box adapter female with threads

$fn=100;

PR=21.25; // enter pvc fitting outer radius here (for standard 1" PVC 4 way tee, PR=20.50)

//threads
scale([1.1,1.1,1])import("box to pipe adaptor nut2.stl");

//clamp ring
translate([0,0,10]) difference() {
    cylinder(25,PR+3,PR+3);
    translate([0,0,-1]) cylinder(55,PR,PR);
    translate([-2.5,-40,10]) cube([5,80,25]);
    }
//reenforcement 
translate ([0,0,10]) difference() {
    cylinder(5,PR+3,PR+3);
    translate([0,0,-1])cylinder(55,PR,PR);
    }