array = [1,2,3]

=begin
p array.map do |num|
  num + 1
end


p array.map { |num| num + 1 }
=end

=begin
mapped_array = array.map { |num| num + 1 }

mapped_array.tap { |value| p value }              # => [2, 3, 4]

mapped_and_tapped = mapped_array.tap { |value| p 'hello' }   # ‘hello’

mapped_and_tapped                                            # => [2, 3, 4]
=end

(1..10)                 .tap { |x| p x }   # 1..10
 .to_a                  .tap { |x| p x }   # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 .select {|x| x.even? } .tap { |x| p x }   # [2, 4, 6, 8, 10]
 .map {|x| x*x }        .tap { |x| p x }   # [4, 16, 36, 64, 100]
