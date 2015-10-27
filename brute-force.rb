class FortySquares

  def initialize(n, c)
    @n = n
    @c = c
  end

  def combos_no_repetition
    (1..@n).to_a.inject(:*) / ((1..@c).to_a.inject(:*) * (1..(@n - @c)).to_a.inject(:*))
  end
end


puts "give an n and a c"
puts "n:"
n = gets.strip
puts "c:"
c = gets.strip

puts FortySquares.new(n.to_i, c.to_i).combos_no_repetition
