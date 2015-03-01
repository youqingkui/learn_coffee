# Learn CoffeeScript

[TOC]

## 函数

### 函数基础
coffee使用`->` 来作为一个函数的开始，前面可以添加括号作为参数`(arg1, arg2) -> do someting`

```coffee
hi = ->
  'hello functions'
```
```js
(function() {
  var hi;

  hi = function() {
    return 'hello functions';
  };

}).call(this);
```
> 默认coffee隐式地返回每个函数的最后一个表达式的值，如果不需要返回，或者想中断操作，可以直接在coffee函数的最后添加`return`。 注意到coffee的函数是赋值给一个变量，因此会有要先声明函数能够调用。

<br/>

coffee 可以使用`arguments` 来访问函数的参数，与JS一致
```coffee
greeting = (subject) ->
  console.log "hello #{arguments[0]}"

greeting "youqing", "kui"
```

```js
(function() {
  var greeting;

  greeting = function(subject) {
    return console.log("hello " + arguments[0]);
  };

  greeting("youqing", "kui");

}).call(this);
```
> 在双引号里面使用`#{someVar}` someVar 为变量，在其前面和后面可以跟字符串，代表拼接

<br/>

函数调用是可以省略括号，但是要注意**直到表达式末尾，隐式括号才会闭合**
```coffee
console.log(Math.round 3.1, Math.round 5.2)
```
```js
(function() {
  console.log(Math.round(3.1, Math.round(5.2)));
}).call(this);
```
> 应当使用`console.log Math.round(3.1), Math.round(5.2) # 3, 5`


<br>
对于操作符`+` 后面不能省略空格
```coffee
a = "hi"
b = a +"youqing"
```
```js
(function() {
  var a, b;
  a = "hi";
  b = a(+"youqing");
}).call(this);
```

<br>
coffee 中的`is`是代表全等的意思`===`, coffee 中没有模拟`==`的操作
```coffee
odd = (num) -> num % 2 is 1
```
```js
(function() {
  var odd;

  odd = function(num) {
    return num % 2 === 1;
  };

}).call(this);
```

<br>
coffee 中的`unless` 代表`if not` 即`if(!some)`
```coffee
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
```

```js
  var e, odd;

  odd = function(num) {
    if (typeof num !== 'number') {
      throw "" + num + " is not a number";
    }
    if (num !== Math.round(num)) {
      throw "" + num + " is not a integer";
    }
    if (!(num > 0)) {
      throw "" + num + " is not a positive";
    }
    return num % 2 === 1;
  };

  try {
    console.log(odd("ddd"));
  } catch (_error) {
    e = _error;
    console.log(e);
  }
```
