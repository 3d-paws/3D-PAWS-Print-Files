// pvc pipe plug

$fn=100;

PR=14.2; //enter inner pvc pipe radius here (for 1" pvc pipe, PR=13.2; for 32mm in Ethiopia 14.2; for standard 1" PVC fitting, PR=16.90)

difference(){
    cylinder(10,PR,PR-0.25); 
    cylinder(30,PR-2,PR-2);
    }

cylinder(3,PR+2,PR+2); 
