// rain gauge lower cover clamp stabilizer


$fn=100;

PR=16.5;    //enter pvc pipe radius here (for standard 1" PVC, PR=16.90; For 32mm PR=16.5)

//hose clamp rim
difference(){
    cylinder (PR*2,25,25); 
    translate([0,0,-1]) cylinder(50,20.5,20.5); 
    translate([-70,-183,-5]) cube([200,200,200]); 
    translate([16,-163,-5]) cube([200,200,200]); 
    translate([-66,-163,-5]) cube([50,200,200]); 
  }

//pipe insert
translate([0,-24,0]) difference(){
    translate([0,67,PR]) rotate([90,0,0]) cylinder(30,PR-0.25,PR);
    translate([0,75,PR]) rotate([90,0,0]) cylinder(70,PR-4,PR-4);
    translate([0,15.5,0]) cylinder (50,30,30);
    translate([0,12,-20]) rotate([0,0,0]) cylinder(60,35,35);
    //hose clamp slot
    translate([0,-2.3,(33.8-14)/2]) difference(){
        cylinder (14,54,54); 
        translate ([0,0,-1]) cylinder (50,42,42); 
        }

}