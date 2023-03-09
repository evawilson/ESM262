#' irrigation 
#' 
#' @param precipitation (PE) (mm/day)
#' @param evapotranspiration (ET) (mm/day)
#' @param crop type (almonds, cotton, vineyard)

irrigation=function(PE,ET) {
  
  ### start with some error checking - we should never have negative ET or PE values
  if (length(ET) < 0)
    return("ET value is negative")
  
  if (length(PE) < 0)
    return("PE value is negative")
  
  ### how many days after rain event should you irrigate?
  irrigation_time = if (ET - PE <= 5) {
    0
  } else if (ET - PE <= 10) {
    1
  } else if (ET - PE <= 15) {
    2
  } else if (ET - PE <= 20) {
    3
  } else if (ET - PE <= 25) {
    4
  } else {5}
  
  
  ### how much should you irrigate?
  irrigation_amount = case_when((crop_type == 'almonds') ~ 5,
                                (crop_type == 'cotton') ~ 3,
                                (crop_type == 'vineyard') ~ 1)

  ## return two outputs
  return(list(irrigation_time, irrigation_amount))
  
}

