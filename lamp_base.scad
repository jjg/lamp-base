// parameters
overall_height = 35;
outside_diameter = 125;
outside_wall_thickness = 5;
lip_height = 5;
lip_thickness = 2;

// let the computer do the math
outside_radius = outside_diameter / 2;
inside_radius = outside_radius - outside_wall_thickness;
lip_radius = outside_radius - lip_thickness;

difference(){
	
	// outside
	union(){
		cylinder(r=outside_radius, h=overall_height, $fn=outside_radius * 2);

		// lip
		translate([0,0,overall_height]){
			cylinder(r=lip_radius,h=5, $fn=lip_radius * 2);
		}
	}

	// inside
	translate([0,0,-1]){
		#cylinder(r=inside_radius, h=overall_height + lip_height + 2, $fn=inside_radius * 2);
	}
}