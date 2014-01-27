// prereqs: arrays, methods, conditional logic
// Write a method that returns the first even element in a array of integers
// This is an old todo we did in Ruby, please rewrite your answer in javascript
 
function first_even(items) {
  for(var i=0; i < items.length; i++) {
    if (items[i] % 2 === 0) {
      return items[i];
      break;
    }
  }
}
  
