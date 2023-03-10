#' irrigation 
#' 
#' @param precip (PE) (mm/day)
#' @param evapotranspiration (ET) (mm/day)
#' @param crop_type type (wheat, corn, barley)
#' @returns how many days after rain event irrigation should take place and how much the crops should be irrigated

irrigation=function(precip, ET, crop_type) {
  
  ### start with some error checking - we should never have negative ET or PE values
  if (length(ET) < 0)
    return("ET value is negative")
  
  if (length(precip) < 0)
    return("PE value is negative")
  
  
  ### use PE and ET as proxy for available soil moisture
  soil_moisture_avail = precip - ET
  
  ### how many days after rain event should you irrigate?
  should_irrigate = if (soil_moisture_avail < 0) {
    FALSE
  } else {TRUE}
  
  ### how much should you irrigate?
  irrigation_amount = if (should_irrigate == TRUE) {
    case_when((crop_type == 'wheat') ~ 5,
              (crop_type == 'corn') ~ 3,
              (crop_type == 'barley') ~ 1)
    
  } else {0}
                          
                          

  ## return two outputs
  return(list(soil_moisture_avail, should_irrigate, irrigation_amount))
  
}

