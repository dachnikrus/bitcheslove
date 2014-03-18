require 'matrix'

puts 'Diagonal matrix'
matrix_choice = gets.to_i


array = (-30..45).to_a.shuffle
puts array [0..8]

matrix = Matrix.build(8) {0}
puts matrix.each_slice(matrix.column_size) {|r| p r }

matrixd = Matrix.diagonal(1,3,8,5,2,7,6,4)
puts matrixd.each_slice(matrix.column_size) {|r| p r}
2

puts 'Which algorithm do you want to use?
1) Bubble sort
2) Selection sort
3) Insertion sort'
choice = gets.to_i

class Array
  def bubblesort!
    length.times do |j|
      for i in 1...(length - j)
        if self[i] < self[i - 1]
          self[i], self[i - 1] = self[i - 1], self[i]
        end
      end
    end
    self
  end
end

class Array
  def selectionsort!
    0.upto(length - 2) do |i|
      (min_idx = i + 1).upto(length - 1) do |j|
        if self[j] < self[min_idx]
          min_idx = j
        end
      end
      if self[i] > self[min_idx]
        self[i], self[min_idx] = self[min_idx], self[i]
      end
    end
    self
  end
end

#puts aryS
if choice == 1
  puts "\nBubble sort: \n\n"
  puts array [0..8].bubblesort!
elsif choice == 2
  puts "\nSelection sort: \n\n"
  puts array [0..8].selectionsort!
else
  puts "Try again"
end
