// pvc pipe plug

$fn=100;

PR=13.4; //enter inner pvc pipe radius here (for 1" pvc pipe, PR=13.2; for 32mm 13.4; for standard 1" PVC fitting, PR=16.90)

difference(){
    cylinder(10,PR,PR-0.25); 
    cylinder(30,PR-2,PR-2);
    }

cylinder(3,PR+2,PR+2); 
