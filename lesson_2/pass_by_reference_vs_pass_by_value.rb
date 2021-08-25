=begin
def add_name(arr,name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names.inspect
=end

def fix(value)
  value.upcase!
  value.concat('!')
  value
end
s = 'hello'
t = fix(s)

p s
p t