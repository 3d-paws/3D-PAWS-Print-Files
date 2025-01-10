$fn=100;

difference () {  

translate([0,0,3])scale([3.5,3.5,3.5])import("lock nut threads2a.stl");translate([0,0,-1])cylinder(40,12,12);translate([0,0,-5])cylinder(40,11,11);translate([0,0,13])sphere(r=18);}

translate([0,0,-12])difference () {cylinder(12,16.8,16.8);translate([0,0,-1])cylinder(25,13,13);}
translate([0,0,-2.2])difference () {cylinder(2,16.8,16.8);translate([0,0,-1])cylinder(25,12,12);}
