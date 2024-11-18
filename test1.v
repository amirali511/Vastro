import vastro

fn main() {
	println(vastro.planet_temperature(vastro.au, 
										 f64(vastro.solar_temperature), 
												  f64(vastro.solar_radius), 
											  0.15, 1.0))
	
	println(vastro.orbiting_time_in_seconds(vastro.au, vastro.solar_mass, 5.972e24))
	println(vastro.orbiting_time_in_years(vastro.au, vastro.solar_mass, 5.972e24))
}