module vastro
import math

// Planet temperature
pub fn planet_temperature(
	distance_from_star f64, 
	star_temperature f64, 
	star_radius f64, 
	planet_albedo f64,
	atmospherical_constant f64
) f64 {
	return star_temperature * 
				 math.pow((star_radius / (2.0 * distance_from_star)), 0.5) * 
				 math.pow((1.0 - planet_albedo), 0.25) * atmospherical_constant

}