import vastro

fn main() {
	println(vastro.planet_temperature(f64(1.5 * 1e11), 
										 f64(vastro.solar_temperature), 
												  f64(vastro.solar_radius), 
											  0.15, 1.0))
}