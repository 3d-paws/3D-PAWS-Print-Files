// end cap for pvc fitting


$fn=100;

PR=16.5;    //enter pvc pipe radius here (for standard 1" PVC, PR=16.90; for 32mm PR = 16.5)

//inner
difference(){
    cylinder(10,PR,PR-0.25); 
    cylinder(12,PR-3,PR-3);
    }
//end
cylinder(3,PR+3,PR+3); 