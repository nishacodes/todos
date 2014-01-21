var i;
function fizzbuzz() {
  for (var i=1; i<=100; i++) {
    if i%3===0 && i%5===0
      print("fizzbuzz");
    else if i%3===0
      print("fizz");
    else if i%5===0
      print("buzz");
    else i%5===0
      print(i);
  }
}

fizzbuzz();



// 101.times do |i|
//   next if i==0
//   case 
//     when i%3==0 && i%5==0
//       puts "fizzbuzz"
//     when i%3==0
//       puts "fizz"
//     when i%5==0 
//       puts "buzz"
//     else
//       puts i
//   end
// end