#refine = (wheat, chaff...) ->
#  console.log "The best: #{wheat}"
#  console.log "The rest: #{chaff.join(', ')}"


sandwich = (beginning, middle..., end) ->
  console.log beginning
  console.log '......'
  console.log middle.join(",")
  console.log '......'
  console.log end


sandwich(1,2,3,4,5,67,9)