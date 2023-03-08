#' irrigation 
#' 
#' @param precipitation (mm)
#' @param evapotranspiration (mm)

irrigation=function(precipitation,evapotranspiration) {
  
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

Outputs:
when
how much 
