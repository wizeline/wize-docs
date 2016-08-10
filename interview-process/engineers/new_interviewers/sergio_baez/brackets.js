function checkBrackets(expression) {
  var brackets = [];
  var bracketsStack = [];
  var position = 0;

  brackets = expression.split('');
  for (var position = 0; position <= bracketsStack.length; position++) {
    // push the opening brackets
    bracketsStack.push(brackets[position]);
    if (brackets[position] === ')') {
      // pop the recently pushed
      bracketsStack.pop();
      // pair with it's opening one
      if (bracketsStack.pop() !== '(') return false;
    } else if (brackets[position] === ']') {
      bracketsStack.pop();
      if (bracketsStack.pop() !== '[') return false;
    } else if (brackets[position] === '}') {
      bracketsStack.pop();
      if (bracketsStack.pop() !== '{') return false;
    }
  }
  return true;
}

console.log(checkBrackets('[()]{}{[()()]()}'));
console.log(checkBrackets('(((((())))))'));
console.log(checkBrackets('[(])'));
