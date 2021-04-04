1
coding: us-ascii
encoding: us-ascii
-*- charset: us-ascii -*-
CODING: US-ASCII

2
x = 0
def hoge
	(1...5).each do |i|
		x += 1
	end
	puts x
end
hoge

3
begin
	puts 1+"2"
rescue
	puts "Error."
rescue TypeError
	puts "Type Error."
ensure
	puts "Ensure."
end

4
puts "90"
puts '90'
puts 0x90
puts 090

5
x = 10
y = x < 10 ? "A" : "B"
puts y

6
MAX=10
print MAX
MAX=100
print MAX

7
def foo(*a)
	p a
end
foo(1,2,3)

8

9
class Hoge
	attr_reader :message
	def initialize
		@message ="Hello"
	end
end

class Piyo < Hoge
	def initialize
		@message ="Hi"
		super
	end
end

puts Piyo.new.message

10
def area r
	return r * r * PI
end

11

12
s = "Hello"
def s.greet
	puts "Hi!"
end
class String
	def greet
		puts "Hello"
	end
end
s.greet

13
class Employee
	attr_reader :id
	attr_accessor :name
	def initialize id, name
		@id = id
		@name = name
	end
	def to_s
		return "#{@id}:#{@name}"
	end
	def <=> other
		return self.id <=> other.id
	end
end

employees = []
employees << Employee.new("3","Tanaka")
employees << Employee.new("1","Suzuki")
employees << Employee.new("2","Sato")
employees.sort!
employees.each do |employee|
	puts employee
end

14
a = [1, 2, 3, 4]
b = [1, 3, 5, 7]

c = a & b
c.each {|i| print i, " "}

15
a = [1, 2, 3, 4]
a[0..-2].each do |i| print i," " end
a[0,3].each do |i| print i," " end

16

17
a1 = %w(a b)
a2 = %w(x y)
a3 = a1.zip(a2)
p a3.first

18
a = [1, 2, 3, 4, 5]
p a.slice(1, 3)

19
a = 'abc'
b = 'abc'

print a.eql? b
print a.equal? b
print a == b

20
puts 5 + "Hello"
puts "Hello" + 5
puts "Hello" * 5
puts 5 * "Hello"

21
s = <<"EOB"
Hello,
Ruby
World.
EOB
"EOB"
p s

22
s1 = "Hoge"
s2 = "Fuga"
s1.concat(s2)
s1.chop
s1.chomp
s1+s2
puts s1

23
s = "123456789"
p s[1, 4]

24
member = [10, "Tanaka"]
print "ID:%2d Name:%s" % member

25

26

27
h = {a: 1, b: 2, c: 3}
p h
h = Hash[:a, 1, :b, 2, :c, 3]
p h

28
File.open{"data"} do |io|
	while not to.eof?
		print io.read(1)
		io.seek(0, IO::SEEK_SET)
	end
end

29
t = Time.gm(1970, 1, 1)
puts t.strftime("%Y/%m/%d")

30