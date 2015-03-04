setName = (name) -> @name = name

cat = {}
cat.setName = setName
cat.setName 'Mittens'
console.log cat.name   # 'Mittens'

pig = {}
setName.apply pig, ['babel']
console.log pig.name

cat = {}
cat.setName = setName
cat.setName 'Mittens'
console.log cat.name   # 'Mittens'


callback = (message) => @voicemail.push message

$('#clickToHide').click -> $(this).hide()
