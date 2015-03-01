fs = require('fs')
files = ['a.txt', 'b.txt', 'c.txt']

for v, k in files
  do(k) ->
    fs.readFile v, 'utf-8', (err, content) ->
      if err
        console.log err
      console.log files[k] + ': ' + content