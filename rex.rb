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
p [1, 2, 3].inject(1){|x, y| x + y ** 2} rescue p $!
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
p a1 & a2
p a1 + a2
p a1 - a2

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

========================================

5(×)
arr = (1..30).to_a
container = []

arr.each_slice(7) do |i|
	container << i
end

p container.length

6(×)
raise ['Error Message']

11(×)
str = "1;2:3;4"
p str.split(";|:")

15(×)
p [1,2,3,4].map do |e| e * e end

22(×)
X = 10
Y = X < 10 ? "C": "D"
puts Y

27(×)
v1 = 1 - 1 == 0
v2 = v1 || raise(RuntimeError)
p v2
puts v2 && false

28(×)
File.open(testfile.txt, 'a+') do |f|
	f.write("recode 1\n")
	f.seek(0, IO::SEEK_SET)
	f.write("recode 2\n")
end

29(○)
arr = [["apple"], ["banana"], ["orange"]].flatten
arr.each do |i|
	puts i
end

32(×)
hoge = *"a"
puts hoge.class

33(×)
(1..10).each
.reverse_each
.each do |i|
	puts i
end

(1..10).each.
reverse_each.
each do |i|
  puts i
end

(1..10).each \
.reverse_each \
.each do |i|
	puts i
end

(1..10).to_a.each.
reverse_each.
each do |i|
  puts i
end

40(×)
s = <<-EOF
    Hello,
    Ruby
    EOF
p s

47(×)
str = <<EOS
よりニッチに。よりユニークに。
  IT市場はもちろん、ヘルスケア・医療・介護など
    次世代市場における企業や生活者のユーザビリティを向上させる
      サービス、ソフトウェアを開発しています。
    #{1 + 1}
EOS
puts str

50(×)
x = 1
y = 1.0

print x == y
print x.eql? y
print x.equal? y
print x.equal?(1)

4/25 88 ======================================

5(×)
begin
	raise StandardError.new
rescue => e
	puts e.class
end

13(○)
a, = (1..5).partition(&:odd?)
p a

20(○)
str = "Liberty Fish   \r\n"
str.strip!
p str

25(○)
def hoge
  x = 0
  1.step(5,1) do |i|
    x += 1
  end
  puts x
end
hoge

32(×)
h = {a: 100, b: 100}
puts h.invert

37(×)
hash = {a: 100, b: 200}

def splat_hash(a, b)
  p a
  p b
end

splat_hash(*hash)

39c
puts "80"
puts 0xFF
puts 7.to_s(3)
p String.method_defined?(:binary)
puts "7".binary

41(○)
arr = %|apple banana orange|
arr.each do |i|
  puts i
end

45(×)
a = "Ruby"
b = " on Rails"
a.concat b
a.reverse
p a.index("R", 1)

49(×)
str = <<EOS
よりニッチに。よりユニークに。
  IT市場はもちろん、ヘルスケア・医療・介護など
    次世代市場における企業や生活者のユーザビリティを向上させる
      サービス、ソフトウェアを開発しています。
    #{1 + 1}
EOS
puts str

4/26 80 =================================-

2(○)
require 'Date'
d = Date.new(2015, 1, 5)
puts d.strftime("%x")

5(×)
require 'Date'
p Date.today.to_s
Date.today.strftime("%Y-%m-%d")

13(×)
p [1,2,3,4].map do |e| e * e end
 => <Enumerator: [1, 2, 3, 4]:map>

15(×)
def foo(n)
  n ** n
end

puts foo (2) * 2

20(×)
a = [1]
a[5] = 10
a.compact
p a

21(×)
str = "Liberty Fish   \r\n"
str.chop
p str

22(○)
10.times{|d| print d == 3..d == 5 ? "T" : "F" }

23(×)
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

unlessは条件が成立しない場合に中の処理が実行されます。
elseを用いることはできますが、elsifを用いることはできません。

28(×)
p ({a: 100, b: 100}).invert
入れ替えの結果キーが重複した場合は、後に定義された方が優先されます。

34(○)
p arr = ["apple", "banana", "orange"].reverse
arr.each do |i|
  puts i
end

39(×)
def hoge
  x = 0
  (1...5).each do |i|
    x += 1
  end
  x
end
puts hoge

40(×)
str = "Liberty Fish   \r\n"
str.strip
p str
String#stripは破壊的メソッドではないので、内容は変更されません。

4/25 94 ========================================================

10(×)
open('textfile.txt', 'r+') do |f|
  data = f.read.upcase
  f.rewind
  f.puts data
end

33(×)
(1..10).each
.reverse_each
.each do |i|
	puts i
end

(1..10).each.
reverse_each.
each do |i|
  puts i
end

(1..10).each \
.reverse_each \
.each do |i|
	puts i
end

(1..10).to_a.each.
reverse_each.
each do |i|
  puts i
end

45(×)
a1 = [1,2,3]
a2 = [4,2,3]

p a1 | a2

===========================================

p (1..10).lazy.map{|num|
  num * 2
}.take(3).inject(0, &:+)

class C
  @val = 3
  attr_accessor :val
  class << self
    @val = 10
  end
  def initialize
    @val *= 2 if val
  end
end

c = C.new
c.val += 10

p c.val

module M
  CONST = "Hello, world"

  class C
    def awesome_method
      CONST
    end
  end
end

p M::C.new.awesome_method

module M
  CONST = "Hello, world"
end

class M::C
  def awesome_method
    CONST
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

module M
  def class_m
    "class_m"
  end
end

class C
  include M
end

p C.methods.include?

class C
  @val = 3
  attr_accessor :val
  class << self
    @val = 10
  end
  def initialize
    @val *= 2 if val
  end
end

c = C.new
c.val += 10

p c.val

module M
  def class_m
    "class_m"
  end
end

class C
  include M
end

p C.methods.include? :class_m

begin
  raise StandardError.new
rescue => e
  puts e.class
end

class C
  def initialize
    p self.class
  end
end

class C2 < C
end

C2.new

class C
  def m1
    200
  end
end

module R
  refine C do
    def m1
      100
    end
  end
end

using R

c = C.new
puts c.m1

p (1..100).each.lazy.chunk(&:even?).first(5).force

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

class C
  CONST = "Good, night"
end

module M
  CONST = "Good, evening"
end

module M
  class C
    CONST = "Hello, world"
  end
end

module M
  class C
    p CONST
  end
end

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

class S
  @@val = 0
  def initialize
    @@val += 1
  end
end

class C < S
  class << C
    @@val += 1
  end

  def initialize
  end
end

C.new
C.new
S.new
S.new

p C.class_variable_get(:@@val)

p (1..100).each.lazy.chunk(&:even?).take(5).force
p (1..100).each.lazy.chunk(&:even?).first(5)

local = 0

p1 = Proc.new { |arg1, arg2|
  arg1, arg2 = arg1.to_i, arg2.to_i
  local += [arg1, arg2].max
}

p1.call("1", "2")
p1.call("7", "5")
p1.call("9")

p local

class C
  def self.m1
    200
  end
end

module R
  refine C.singleton_class do
    def m1
      100
    end
  end
end

using R

puts C.m1

20
val = 1 + 1/2r
puts val.class

22
def m1(*)
  str = yield if block_given?
  p "m1 #{str}"
end

def m2(*)
  str = yield if block_given?
  p "m2 #{str}"
end

m1 m2 do
  "hello"
end



