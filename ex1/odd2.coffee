odd = (num) ->
  unless typeof num is 'number'
    throw "#{num} is not a number"

  unless num is Math.round num
    throw "#{num} is not a integer"

  unless num > 0
    throw "#{num} is not a positive"

  num % 2 is 1


try
  console.log odd "ddd"
catch e
  console.log e


do(odd(123))