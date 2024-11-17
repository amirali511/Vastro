import vastro

fn main() {
	println(vastro.solar_mass)
	println(vastro.solar_radius)
	println(vastro.solar_luminosity)
	println(vastro.solar_temperature)
	println(vastro.solar_apparent_magnitude)
	println(vastro.solar_absolute_magnitude)
	println(vastro.planet_temperature(f64(1.5 * 10e11), 
										 f64(vastro.solar_temperature), 
												  f64(vastro.solar_radius), 
											  0.15))
}