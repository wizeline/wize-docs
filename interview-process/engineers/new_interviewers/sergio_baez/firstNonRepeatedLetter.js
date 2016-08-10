function firstNonRepeatedLetter(phrase) {
  var letters = [];
  var sortedLettersArray = [];
  var dictionary = {};

  // split the prhase in an array
  letters = phrase.split('');
  letters.forEach(function(letter, index) {
    // assign an index to each letter
    dictionary[letter] = index;
  });
  // sort by the index assigned
  sortedLettersArray = Object.keys(dictionary).sort(function(letterA, letterB) {
    return dictionary[letterA] - dictionary[letterB];
  });
  // return the lowest letter correspinding to that index
  return (sortedLettersArray[0]);
}

console.log(firstNonRepeatedLetter('abcdefghija'));
console.log(firstNonRepeatedLetter('hello'));
console.log(firstNonRepeatedLetter('Java'));
console.log(firstNonRepeatedLetter('simplest'));
