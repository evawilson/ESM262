
auto_power = function(crolling = .015, m, g = 9.8, p_air = 1.2, cdrag = 0.3, V, A) {
  result = crolling * m * g * V +.5 * A * p_air * cdrag * (V^3)
  return(result)
}
