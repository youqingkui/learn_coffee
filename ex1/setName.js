// Generated by CoffeeScript 1.8.0
(function() {
  var callback, cat, pig, setName;

  setName = function(name) {
    return this.name = name;
  };

  cat = {};

  cat.setName = setName;

  cat.setName('Mittens');

  console.log(cat.name);

  pig = {};

  setName.apply(pig, ['babel']);

  console.log(pig.name);

  cat = {};

  cat.setName = setName;

  cat.setName('Mittens');

  console.log(cat.name);

  callback = (function(_this) {
    return function(message) {
      return _this.voicemail.push(message);
    };
  })(this);

  $('#clickToHide').click(function() {
    return $(this).hide();
  });

}).call(this);

//# sourceMappingURL=setName.js.map
