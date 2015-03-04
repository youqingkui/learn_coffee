# 在后面使用return
clearArray = (arr) ->
  arr.splice 0, arr.length
  return

a = [1,2,3,4,5,6]

clearArray(a)


