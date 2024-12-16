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

// Time to orbit a star in seconds
pub fn orbiting_time_in_seconds(
	distance_from_star f64,
	star_mass f64,
	planet_mass f64
) f64 {
	return math.sqrt(
				((4 * math.pi * math.pi) / (gravitational_constant * (star_mass + planet_mass))) * 
				math.pow(distance_from_star, 
				3))
}

// Time to orbit a star in days
pub fn orbiting_time_in_days(
	distance_from_star f64,
	star_mass f64,
	planet_mass f64
) f64 {
	return math.sqrt(
				((4 * math.pi * math.pi) / (gravitational_constant * (star_mass + planet_mass))) * 
				math.pow(distance_from_star, 
				3)) / (60 * 60 * 24)
}

// Volume of a sphere (needed to calculate the volume of planets, stars, etc)
pub fn sphere_volume(
	radius f64
) f64 {
	return (4/3) * math.pi * math.pow(radius, 3)
}

// Surface of a sphere (needed to calculate the surface of planets, stars, etc)
pub fn sphere_surface(
	radius f64
) f64 {
	return 4 * math.pi * math.pow(radius, 2)
}

// Gravitational force between two objects
pub fn gravitational_force(
	first_object_mass f64,
	second_object_mass f64,
	distance f64
) f64 {
	return (vastro.gravitational_constant * first_object_mass * second_object_mass) 
				 / math.pow(distance, 2)
}
