=begin ===1===
Create a class Calculator, which performs addition and subtraction of two numbers at a time. The sample code explains the expected API.
=end

class Calculator
  def add(a, b)
   c = a + b
   c
  end

  def subtract(a, b)
   c = a - b
   c
  end
end


=begin ===2===
Given an array containing some strings, return an array containing the length of those strings.

You are supposed to write a method named 'length_finder' to accomplish this task.
=end

def length_finder(input_array)
  input_array.map { |n| n.length }
end

=begin ===3===
Given a sentence containing multiple words, find the frequency of a given word in that sentence.

Construct a method named 'find_frequency' which accepts two arguments 'sentence' and 'word', both of which are String objects.
=end


def find_frequency(sentence, word)
  sentence_array = sentence.downcase.split(" ")
  freq = sentence_array.count(word)
  freq
end


=begin ===4===
Create a method named 'sort_string' which accepts a String and rearranges all the words in ascending order, by length. Let's not treat the punctuation marks any different than other characters and assume that we will always have single space to separate the words.
=end

def sort_string(string)
  new_string = string.split(" ")
  new_string.sort! { |a, b| a.length <=> b.length }
  new_string.join(" ")
end


=begin ===5===
Create a method 'random_select' which, when given an array of elements (array) and a number (n), returns n randomly selected elements from that array.
=end

def random_select(array, n)
  new_array = []
  max = array.length
  n.times do
    new_array << array[rand(max)]
  end
  new_array
end



=begin ===6===
Let us say you are trying to recruit team-members for your new startup! Given a candidate, you need an expression that will tell you whether they fit into certain types. This is how a candidate object would look:

candidate.years_of_experience = 4
  candidate.github_points = 293
  candidate.languages_worked_with = ['C', 'Ruby', 'Python', 'Clojure']
  candidate.applied_recently? = false
  candidate.age = 26

  We are looking to hire experienced Ruby programmers. Our ideal candidate has 2 or more years of experience, but some programmers become really good even before that. We'll consider their Github points (a nice indicator of a good programmer), and even if they are not experienced, candidates with 500 Github points or more can apply. And there is one more catch: Ruby being a cool and awesome language, a lot of smart youngsters are very good at it. We love those kids, but for this particular job we'd rather have them study at school than work. Let us filter out candidates who are younger than 15. Also we don't want to consider candidates who applied recently for this opening.
=end


is_an_experienced_programmer =
( candidate.languages_worked_with.include?("Ruby")) &&               ( candidate.applied_recently? == false && candidate.age >= 15 ) &&
( candidate.years_of_experience >= 2 || candidate.github_points >= 500  )

=begin ===7===
Given a sentence, return true if the sentence is a palindrome.

You are supposed to write a method palindrome? to accomplish this task.
=end

def palindrome?(sentence)
  sentence_new = sentence.downcase.split(" ").join("")
  check = sentence_new.reverse
  check == sentence_new
end


=begin ===8===
Compute the sum of cubes for a given range a through b.

Write a method called sum_of_cubes to accomplish this task
=end

def sum_of_cubes(a, b)
  range = (a..b)
  cube = range.inject(0){ |x, y| x + y*y*y }
  cube
end

=begin ===9===
Given an Array, return the elements that are present exactly once in the array.

You need to write a method called non_duplicated_values to accomplish this task.
=end

def non_duplicated_values(values)
  values.find_all {|x| values.count(x) == 1}
   end



=begin ===10===
Given an array, return true if all the elements are Fixnums.

You need to write array_of_fixnums? method to accomplish this task.
=end

def array_of_fixnums?(array)
  array.all? { |n| n.is_a?(Fixnum) }
end

=begin ===11===
9 is a Kaprekar number since 
9 ^ 2 = 81 and 8 + 1 = 9

297 is also Kaprekar number since 
297 ^ 2 = 88209 and 88 + 209 = 297.

In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. 
Find if a given number is a Kaprekar number
=end

def kaprekar?(k)
  n_dig = k.to_s.size
  square = (k*k).to_s
  
  second_half = square[-n_dig..-1].to_i
  first_half = square.size.even? ? square[0..n_dig-1].to_i : square[0..n_dig-2].to_i
  
  k == first_half + second_half

end


=begin ===12===
For 2 Colors in RGB: 
(R1, G1, B1) and (R2, G2, B2),

Brightness index is: 
( 299*R1 + 587*G1 + 114*B1) / 1000 

Brightness difference is: 
Absolute difference in brighness indices 

Hue difference is: 
|R1 - R2| + |G1 - G2| + |B1 - B2|
where |x| is the absolute value of x

If Brightness difference is more than 125 and the Hue difference is more than 500 then the colors have sufficient contrast

Find out if the given color combos have sufficient contrast and get all the tests passing.
=end

class Color
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    ( 299*@r + 587*@g + 114*@b) / 1000
  end

  def brightness_difference(another_color)
    another_color.brightness_index - brightness_index
  end

  def hue_difference(another_color)
    x = (@r - another_color.r).abs + 
        (@g - another_color.g).abs + 
        (@b - another_color.b).abs
    x.abs
  end

  def enough_contrast?(another_color)
    brightness_difference(another_color) > 125 &&       hue_difference(another_color) > 500
  end
end


=begin ===13===
You are given some code in the form of lambdas. 

Measure and return the time taken to execute that code. 

You may use Time.now to get the current time.
=end

def exec_time(proc)
  time = Time.now
    proc.call
  duration = Time.now - time
  return duration
end


=begin ===14===
Given a 3 or 4 digit number with distinct digits, return a sorted array of all the unique numbers that can be formed with those digits.
=end

def number_shuffle(number)
  size = number.to_s.size.to_i
  digits = number.to_s.split(//)
  
  number_of_comb = (1..size).inject(1) { |total, m| total *= m } # factorial formula, this method will work with any number of digits in the argument
  final_comb = []
  
until final_comb.uniq.length == number_of_comb do
    final_comb << digits.shuffle.join
  end
  final_comb.uniq.sort
end

number_shuffle(125)



=begin ===15===
A restaurant has incoming orders for which you need to compute the costs based on the menu.

You might get multiple orders at times.

Examples:
if the order is {:rice => 1, :noodles => 1}, and the menu is {:rice => 3, :noodles => 2}, then the cost is 5.

If the orders are {:rice => 1, :noodles => 1} and {:rice => 2, :noodles => 2} and the menu is {:rice => 3, :noodles => 2}, then the cost is 15.
=end


class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    cost = 0
    orders.each do |single_order|
      single_order.each_key do |item|
        cost += single_order[item] * @menu[item]
      end
    end
    cost
  end
end

=begin ===16===
Given a custom class MyArray, 
write a 'sum' method that takes a block parameter.

Example: 
my_array = MyArray.new([1, 2, 3]) 
my_array.sum gives 6 
my_array.sum(10) gives 16 
my_array.sum(0) {|n| n ** 2 } gives 14
=end

class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    if block_given? == false
      @array.inject(0) { |total, n| total += n } + initial_value
    else
      @array.each { |n| initial_value += yield(n) }
      initial_value
    end
  end
end


