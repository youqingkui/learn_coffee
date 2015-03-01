odd = (num) ->
  if typeof num is 'number'
    if num is Math.round num
      if num > 0
        num % 2 is 1

      else
        throw "#{num} is not a positive"

    else
      throw "#{num} is not a integer"

  else
    throw "#{num} if not a number"

try
  console.log odd(123.123)

catch e
  console.log e