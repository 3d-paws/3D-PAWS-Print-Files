// EFTE voltaic pipe clamp LH


$fn=100;

PR=16.2;    //enter pvc pipe radius here (for standard 1" PVC, PR=17; for 32mm PR=16.2)


rotate([0,90,0])union(){
//pipe ring    
    translate([10,110.5,-PR-1])rotate([0,90,0])difference(){
        cylinder(10,PR+6,PR+6);
        translate([0,0,-1]) cylinder(25,PR,PR);
        translate([0,0,-1])rotate([0,-90,0]) cylinder(25,5.5,5.5);
        }

//panel mount
    difference(){
        translate([0,81,0]) cube([20,40,17]);
        translate([-19,-16,6.5]) cube([35,135,3.5]);
        translate([-22,17,9]) cube([35,85,10]);
        translate([-30,-37,9]) cube([35,135,15]);
        translate([-12,73,7])rotate([0,0,45]) cube([35,135,20]);
        
        //screw hole
        translate([9,110.5,-22]) cylinder(25,5.5,5.5);
        translate([9,110.5,-15]) cylinder(25,2.5,2.5);
        translate([9,110.5,-10]) cylinder(25,1,1);
        }

}
//hose clamp ring
translate([-PR-1,110.5,-10]) rotate([0,0,-90]) difference(){
    cylinder(20,PR+2,PR+2);
    translate([0,0,-1]) cylinder(55,PR,PR);
    translate([-30,0,-1]) cube([60,60,60]);
    translate([0,0,5])rotate([90,0,0]) cylinder(55,5.5,5.5);
    }

