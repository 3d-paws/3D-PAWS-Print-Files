// modular cable inlet plug
// adjust PR and CR to fit different fittings or pipe


//parameters
$fn=100;

PR=16.90;   //enter pvc pipe radius here (for standard 1" PVC, PR=16.90)
CR= 2.75;   //cable radius (voltaic CR=2.7)
    
// main body (ring) with cable pass-through    
difference(){
    cylinder(10,PR,PR); 
    cylinder(12,PR-3,PR-3);
    translate([PR-CR,0,-2]) cylinder(25,CR,CR);
    translate([PR-CR,-CR,-2])cube([13,CR*2,25]);
    }
    
// flange with same pass-through
difference(){
    cylinder(3,PR+3,PR+3); 
    translate([PR-CR,0,-2]) cylinder(25,CR,CR);
    translate([PR-CR,-CR,-2])cube([13,CR*2,25]);
    }
