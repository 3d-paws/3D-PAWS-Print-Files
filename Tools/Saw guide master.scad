$fn=100;
PR=30.5; //pipe outer radius
WT=PR+5; //Guide outer diameter (wall thickness)
BW=WT*2; //This is for the square base

//Pipe grip
difference(){
    cylinder(40,WT,WT);
    translate([0,0,-1])cylinder(50,PR,PR);
    translate([-PR-6,-WT-5,20])cube([BW,BW+10,2]);}
    
//square base
difference(){
    translate([0,-WT,0])cube([WT+10,BW,40]);
    translate([0,0,-1])cylinder(50,PR,PR);
    translate([-PR-6,-WT-5,20])cube([BW,BW+10,2]);}
