run = (fun, a, b...) -> fun(a, b...)


test = () ->
  console.log arguments

run(test, 1,2,3,5)


run = (func, args...) -> func.apply this, args

run = (func, args...) -> func.call this, args...