1(○)
s = <<'EOF'
Hello,
Ruby
EOF
# 'EOF'

p s

2(○)
$val = 0

class Count
	def self.up
		$val = $val + 1
		$val == 3 ? true : false
	end
end

[*1..10].any? do
	Count.up
end

p $val

3(○)
p "Hello%d" % 5

4(×)
hoge = "a".to_h
puts hoge.class

5(○)
h = {a: 100, b: 200}
p h.invert

6(×)
require 'date'
p Date.today.to_s
p Date.today.strftime("%Y-%m-%d")

7(×)

8(×)
arr = [1,2].product([3,4]).transpose
p arr

9(×)
p [1, 2, 3].inject{|x, y| x + y ** 2} rescue p $!
p [1, 2, 3].inject(0){|x, y| x + y ** 2} rescue p $!
p [1, 2, 3].inject([]){|x, y| x << y ** 2} rescue p $!
p [1, 2, 3].inject do|x, y| x + y ** 2 end rescue p $!

10(○)
a1 = "abc"
a2 = 'abc'

print a1.equal? a2
print a1 == a2

11(×)
a = "Ruby"
b = " on Rails"
a.concat b
a.reverse!
p a.index("R", 1)

12(○)
a = [1,2,3,4]
p a[1..2]

13(×)
hoge = "a".to_a
puts hoge.class

14(○)

15(×)
def hoge(step = 1)
	current = 0
	Proc.new {
		current += step
	}
end

p1 = hoge
p2 = hoge(2)

p p1.call
p p1.call
p p1.call
p p2.call
p p2.call

p p2.call

16(○)
def bar(n)
  puts n
end

bar 5

def bar(n)
  puts n
end

bar (10)

def bs
def bar(*n1, n2, *n3)
  puts n1
  puts n2
end

bar 5, 6, 7, 8

17(×)
def foo(n)
	n ** n
end

puts foo(2) * 2

18(○)
(10..15).to_a.map.with_index(1) do |elem, i|
  puts i
end

19(×)
h = {a: 100, b: 200}
h.each {|p|
	p p.class
}

20(×)
arr = (1..30).to_a
container = []

arr.each_cons(7) do |i|
  container << i
end

p container.length

21(○)
arr = [1,2].zip([3,4])
p arr

22(○)
s = <<'EOF'
Hello,
Ruby
EOF

p s

23(○)
X = 10
Y = X < 10 ? "C" : "D"
puts Y

24(○)

25(○)
hoge = 0
def hoge
	x = 0
	5.times do |i|
		x += 1
	end
	x
end
puts hoge

26(×)
p "Hello" % 5

27(×)
a = [1]
a[5] = 10
a.compact
p a

28(×)
def hoge(n)
	unless n != 3
		"hello"
	elsif n == 5
		"world"
	end
end

str = ''
str.concat hoge(3)
str.concat hoge(5)

puts str

29(○)
a = [1]
a[5] = 10
a.compact!
p a

30(×)
def hoge
	X = 10
	Y = X < 10 ? "C" : "D"
	puts Y
end
hoge

31(○)
def foo(n)
	n ** n
end

puts foo(2) * 2

32(○)
str = "abcdefghijk"
p str[2...4]

33(○)
begin
	1 / 0
rescue
	raise
end

34(○)
p "Hello" * 5

35(×)
X = 10
X = X < 10 ? "C" : "D"
puts X

36(○)
str = "abcdefghijk"
p str[2,4]

37(○)
a1 = "abc"
a2 = 'abc'

print a1.equal? a2
print a1.eql? a2

38(○)
a = [1,2,3,4]
p a[2,1]

39(○)
s = ["one", "two", "three"]
s.shift
s.shift
s.unshift
s.push "four"
p s

40(○)
s = <<-EOF
			Hello,
			Ruby
			EOF

p s

41(×)
def hoge
	x = 0
	(1...5).each do |i|
		x += 1
	end
	x
end
puts hoge

42(×)
a = "Ruby"
b = " on Rails"
a.append b
a.reverse
p a.index("R", 1)

43(○)
puts '10'.oct
puts "110"
puts "110".to_i(2)

44(×)
require 'Date'
p Date.today.strftime("%F")

45(○)
a1 = [1,2,3]
a2 = [4,2,3]

p a1 | a2

46(○)
array = Array.new(3){"Apple"}
array[0].upcase!

p array

47(○)

48(×)
hash = {price: 100, order_code: 200, order_date: "2018/09/20", tax: 0.8}

p hash.values_at(:price, :tax)

49(×)
require 'Date'
p Date.today.strftime("%Y-%m-%d")

50
$val = 0

class Count
	def self.up
		$val = $val + 1
		$val == 3 ? true : false
	end
end

[*1..10].select do
	Count.up
end

p $val

## 1
s = <<'EOF'
Hello,
Ruby
EOF
'EOF'

p s

## 2
require 'Date'
d = Date.new(2015, 1, 5)
puts d.strftime("%x")

## 3
$val = 0

class Count
	def self.up
		$val = $val + 1
		$val == 3 ? true : false
	end
end

[*1..10].any? do
	Count.up
end

p $val

## 4
module M
  CONST = "Hello, world"

  class C
    def awesome_method
      CONST
    end
  end
end

p M::C.new.awesome_method

class C
end

module M
  CONST = "Hello, world"

  C.class_eval do
    def awesome_method
      CONST
    end
  end
end

p C.new.awesome_method

class C
  CONST = "Hello, world"
end

module M
  C.class_eval(<<-CODE)
    def awesome_method
      CONST
    end
  CODE
end

p C.new.awesome_method

class C
  CONST = "Hello, world"
end

module M
  C.class_eval do
    def awesome_method
      CONST
    end
  end
end

p C.new.awesome_method

## 5
while not DATA.eof?
	lines = DATA.readlines
	lines.map(&:chomp!)
	lines.reverse
	p lines
end

## 6
class C
  class << C
    def hoge
      'Hi'
    end
  end

  def hoge
    'Goodbye'
  end
end

p C.new.hoge

p "Hello%d" % 5






