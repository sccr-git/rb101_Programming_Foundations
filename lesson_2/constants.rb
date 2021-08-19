=begin
FAVORITE_COLOR = 'taupe'

1.times do
  puts "I love #{FAVORITE_COLOR}!"  # => I love taupe!
end
=end

=begin
favorite_color = 'taupe'

1.times do
  puts "I love #{favorite_color}!"  # => I love taupe!
end
=end

=begin
loop do
  MY_TEAM = "Phoenix Suns"
  break
end

puts MY_TEAM    # => Phoenix Suns
=end

=begin
loop do
  my_team = "Phoenix Suns"
  break
end
=end

# puts my_team    # => Traceback (most recent call last):
# constants.rb:31:in `<main>': undefined local variable or method `my_team' for main:Object (NameError)

def fix(value)
  p value << 'xyz'
  p "1 #{value.object_id}"
  p value = value.upcase
  p "2 #{value.object_id}"
  p value.concat('!')
  p "3 #{value.object_id}"
end
s = 'hello'
puts t = fix(s)