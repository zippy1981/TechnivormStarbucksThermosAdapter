// funnel() module originally taken from http://www.thingiverse.com/thing:40719/#files
module funnel(height, mouthRadius, midRadius, midHeight, tipRadius, lipHeight, thickness=0.03125, facets=50) {
  union() {
    // lip of outer cone
    difference() {
      translate([0, 0, height]) cylinder(r=mouthRadius, h=lipHeight, $fn=facets);
      translate([0, 0, height]) cylinder(r=mouthRadius - thickness, h=lipHeight, $fn=facets);
    }

    // cone
    difference() {
      translate([0, 0, midHeight]) cylinder(height-midHeight, midRadius, mouthRadius, $fn=facets);
      translate([0, 0, midHeight]) cylinder(height-midHeight, midRadius-thickness, mouthRadius-thickness, $fn=facets);
    }

	  //stem
    difference() {
      cylinder(midHeight, tipRadius, midRadius, $fn=facets);
      cylinder(midHeight, tipRadius-thickness, midRadius-thickness, $fn=facets);
    }

  }
}

funnel(
	height= 2,				// height of whole creation 
	mouthRadius = 4.75,	// widest part of the funnel
	midRadius = 1.25,		// width where the cone meets the stem
	midHeight = 1.5, 		// height of the stem
	tipRadius = 1.25,		// radius of the bottom of the stem
	lipHeight = 1			// Height of the lip
);

