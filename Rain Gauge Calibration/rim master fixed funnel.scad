$fn=100;

radius=97.91923434
;

translate ([0,0,7.9])difference () {cylinder (80,88,radius+2); translate ([0,0,-1]) cylinder (85,86,radius);}

//rim
difference () {cylinder (8,88,88); translate ([0,0,-5]) cylinder (120,86,86);}