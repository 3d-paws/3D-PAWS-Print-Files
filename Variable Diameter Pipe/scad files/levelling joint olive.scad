// leveling joint olive

$fn=100;

PR=11.00; //enter pvc pipe radius here (for standard 3/4" CPVC, PR=11.00)


module olive(){
    difference() {
        sphere (r=18);
        translate ([0,0,-24]) cylinder (58,PR,PR);
        translate ([0,0,10]) cylinder (5,30,30);
        translate ([0,0,-15])cylinder (5,30,30);
        translate ([0,0,8.25])cylinder (2,PR,PR+1);
    }
}

olive();