import vastro

fn main() {
	println(vastro.planet_temperature(vastro.au, 
										 								f64(vastro.solar_temperature), 
												  					f64(vastro.solar_radius), 
											  						vastro.earth_albedo, 1.0))
	
	println(vastro.orbiting_time_in_seconds(vastro.au, vastro.solar_mass, vastro.earth_mass))
	println(vastro.orbiting_time_in_days(vastro.au, vastro.solar_mass, vastro.earth_mass))
}
