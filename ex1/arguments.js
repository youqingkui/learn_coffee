// Generated by CoffeeScript 1.8.0
(function() {
  var sandwich,
    __slice = [].slice;

  sandwich = function() {
    var beginning, end, middle, _i;
    beginning = arguments[0], middle = 3 <= arguments.length ? __slice.call(arguments, 1, _i = arguments.length - 1) : (_i = 1, []), end = arguments[_i++];
    console.log(beginning);
    console.log('......');
    console.log(middle.join(","));
    console.log('......');
    return console.log(end);
  };

  sandwich(1, 2, 3, 4, 5, 67, 9);

}).call(this);

//# sourceMappingURL=arguments.js.map
