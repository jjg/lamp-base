difference(){

	// body
	union(){

		cube([40,16,5]);

		translate([0,8,0]){
			cylinder(r=8,h=5, $fn=50);
		}

		translate([40,8,0]){
			cylinder(r=8,h=5, $fn=50);
		}
	}

	// mounting hole
	translate([0,8,-1]){
		cylinder(r=5,h=7, $fn=50);
	}

	// cable hole 1
	translate([35,12,-1]){
		cylinder(r=6,h=7, $fn=50);
	}

	// cable hole 2
	translate([16,4,-1]){
		cylinder(r=6,h=7, $fn=50);
	}
}
