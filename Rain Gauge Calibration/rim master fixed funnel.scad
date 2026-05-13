// =============================================================
// 3D-PAWS Rain Gauge - Calibrated Rim
// =============================================================
//
// PURPOSE:
//   This file generates the calibrated rim for the tipping bucket
//   rain gauge. The rim diameter is calculated during the calibration
//   process to ensure the gauge tips at exactly 0.2mm of rain.
//
// HOW TO USE THIS FILE:
//   1. Complete the calibration procedure as described in the manual.
//   2. Use the "Rim Radius Calculation" spreadsheet to determine
//      the correct radius value from your calibration data.
//   3. Update ONLY the 'radius' variable below with your calculated value.
//   4. Export as STL: File > Export > Export as STL.
//
// *** DO NOT change any other values in this file. ***
// =============================================================


// --- SMOOTHNESS SETTING (do not change) ---
$fn = 100;

// --- CALIBRATED RADIUS (mm) ---
// *** UPDATE THIS VALUE ONLY ***
// Replace the number below with the radius calculated from your
// calibration spreadsheet (e.g. the manual example gives 99.19852).
// Copy the value to at least 2 decimal places for accuracy.
radius = 97.91923434;


// --- RIM GEOMETRY (DO NOT CHANGE BELOW THIS LINE) ---

// Outer funnel cone: tapers outward from the base to the calibrated radius
translate([0, 0, 7.9])
difference() {
    cylinder(80, 88, radius + 2);          // outer wall of funnel cone
    translate([0, 0, -1]) cylinder(85, 86, radius); // inner cutout
}

// Base rim ring: the fixed-diameter collar that sits on the gauge body
difference() {
    cylinder(8, 88, 88);                   // outer rim cylinder
    translate([0, 0, -5]) cylinder(120, 86, 86); // inner cutout
}