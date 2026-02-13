# PVC Pipe Component Sizing

These OpenSCAD (.scad) models are part of the 3D-PAWS Print Files repository and are designed for use with PVC pipe–based assemblies.

Because PVC pipe outer diameters vary by region, schedule, and manufacturer, these models are parameterized so they can be easily adjusted to fit locally available pipe.

## How Pipe Sizing Works

Each .scad file defines pipe dimensions using a top-level variable rather than fixed geometry.
Before rendering or exporting a model, you must update this variable to match the measured outer diameter of your PVC pipe.

## Pipe Radius Variables

Depending on the file, you may see one or more of the following variables defined near the top of the file:

- SPR — Small Pipe Radius (mm)
- LPR — Large Pipe Radius (mm)
- PR  — Pipe Radius (mm)

These values represent the radius of the pipe, not the nominal pipe size.

Example:

    PR = 16.7;  // Pipe radius in mm

This corresponds to a pipe with an outer diameter of approximately 33.4 mm.

## Adjusting a Model for Your Local Pipe

1. Measure the outer diameter of your PVC pipe using calipers.
2. Divide the measurement by two to get the radius.
3. Open the .scad file in OpenSCAD.
4. Modify the appropriate variable (SPR, LPR, or PR) at the top of the file.
5. Render and export the STL.

Always use measured dimensions rather than relying on nominal pipe sizes.

## Notes on Fit and Tolerances

- Nominal PVC sizes (e.g., “1 inch”, “1/2 inch”) do not reflect actual dimensions.
- Print material, printer calibration, and slicer settings may affect fit.
- Some parts include multiple pipe interfaces and will define both SPR and LPR.

## Design Rationale

This approach allows the same OpenSCAD models to be reused across different regions and supply chains without duplicating files.
Adjusting a single variable ensures the geometry adapts correctly to your local PVC pipe dimensions.
