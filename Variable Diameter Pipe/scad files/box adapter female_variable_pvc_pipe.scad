/*
female box adapter for the 3D-PAWS station assembly

Created by Martin Steinsen

Updated 5/28/25 with comments by WTN
*/


// ================ PARAMETERS ======================
$fn=100;
fitting_or=16.9; //1" pvc = 16.9

// ================ MODULE ==========================

module box_adptr_fem(){
    
    //nut to give threads
    scale([1.1,1.1,1])import("box to pipe adaptor nut2.stl");
    
    //pipe or fitting size for clamp
    translate ([0,0,10]) difference () {
        cylinder(25,fitting_or+3,fitting_or+3);
        translate([0,0,-1]) cylinder(55,fitting_or,fitting_or);
        translate ([-2.5,-40,10]) cube ([5,80,25]);
        }
    //inner stop
    translate ([0,0,13]) difference () {
        cylinder(3,fitting_or,fitting_or);
        translate([0,0,-1]) cylinder(55,fitting_or-2,fitting_or-2);}
}

// ================ DISPLAY ==========================
box_adptr_fem();