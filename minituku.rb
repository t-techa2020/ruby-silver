1-1(○)
n = 10
n.times do |i|
	puts i + n
end

def bar
	puts n
end
n = 10
bar(n)

def foo(x)
	puts x
end
foo()

10.times do |i|
	n = i
	puts n
end
puts n

1-2(○)

1-3(×)

1-4(○)
a = [1, 2, 3]
b = [4, 5, 6]
p a.zip(b).first

1-5(○)
s = 0xBacFace
s += 1
puts s

1-6(○)

1-7(○)
p [1, 2, 3, 4].zip([10, 10, 10, 10])
p (10..40).to_a
p (1...5).to_a.map{|i| i * 10}
p [1,2,3,4].select{|i| i * 10}

1-8(×)

1-9(○)
10.+("10")
1..10.to_s
10.*(0xFace)
Time.now.strftime(1999,12,11)

1-10(○)
p "abcdefg"[2, 3]
p ["a", "b", "c", "d", "e"][0..2].join
p "abcdefg" - "ab" - "fg"
p "abcdefg"[2,3]

2-1(○)
str = "ABQUOFNI".slice(3, 2)
puts(str)

2-2(×)
puts ("abcdefghijklmnopqrstuvwxyz".scan(/.{3}/))

2-3(○)
p /[^P|p]rogramming/ =~ "Arogramming"

2-4(○)
p "sheep,hummingbird,rabbit".index(/,/, 10)

2-5(○)
p ["foo\r\n", "bar\n", "baz\n\r"].map {|i| i.chomp}

2-6(○)
p((0...10).find {|i| i > 10})

2-7(×)
p "abcde-fghijklmno-pqrstuv-wxyz".delete("f-u-")

2-8(○)
str = "Ruby"
p str[0..-2].swapcase

2-9(○)
text = <<-END
	foo
	bar
	baz
	END
p text

2-10(×)
str = "foobarbaz\r\n\r\n"
p str.chomp('').chop.chop.reverse

3-1(○)
ary = [1, 2, 3, 4, 5]
ary.reverse!
p ary[1...-1]

3-2(×)
p [{:foo => 1}, ["bar", 2]].map{|i| i.to_s}.sort

3-3(○)
ary = ["foo", "bar", "baz"]
ary.unshift(ary.first)
p ary

3-4(○)
ary1 = [1, 2, 3, 4, 5]
ary2 = [1, 2, 3]
p ary1 & ary2

3-5(○)
ary = (-15..-10).to_a
p ary.select {|i| i % 3 == 0}

3-6(○)
p 0xA + 022 + 0b1010

3-7(○)
ary = [1, 2, 3, 4, 5, 6]
p ary.inject {|a, b| a + b}

3-8(○)
ary1 = [1, 2, 3, 4, 5] - [2, 4]
ary2 = [6, 7, 8, 9, 10] & [7, 9]
p ary1.concat(ary2)

3-9(×)
hash = {:foo => 1, :bar => 2}
p hash.delete(:foo)
p hash
p hash.find {|i| i.member?(:foo)}
p hash.reject {|key, value| key == :foo}
p hash.dup

3-10(○)
p ({:foo => [1, 2, 3, 4, 5].length})

4-1(○)
module Foo
	Bar = "bar"
end

class Baz
	include Foo
end

puts Baz::Bar

4-2(×)
class Object
	def foo
		puts "foo"
	end
end

foo

4-3(×)
a = "foo"
b = a
b.slice!(0, 1)
print(a, b)

4-4(○)
class Foo
	attr_accessor :foo
end

class Bar < Foo
	def initialize(foo)
		@foo = foo
	end
end

bar = Bar.new("bar")
puts(bar.foo)

4-5(○)
o1 = Object.new
o2 = Object.new

if o1.equal?(o2)
	puts("o1")
else
	puts("o2")
end

4-6(○)
class Foo
	@@count = 0

	def count
		@@count
	end

	def increment
		@@count += 1
	end
end

class Bar < Foo; end
class Baz < Bar; end

baz = Baz.new
baz.increment
bar = Bar.new
bar.increment
foo = Foo.new
p foo.count

4-7(×)
Foo = "main"

class Bar
	Foo = "foo"

	def self.foo
		::Foo
	end
end

p Bar.foo

4-8(○)
p (0x3FFFFFFF + 0x10000000).class

4-9(○)
class Integer
	def foo
		self + 0.0
	end

	def bar
		self.next
	end
end

num = 1
num = num.integer? ? num.foo : num.bar
p num.class

4-10(×)
module Foo
	def foo
		puts("foo")
	end
end

class Bar
	extend Foo
end

Bar.foo

5-1(○)
File.open("program.rb", "w") do |f|
	f.puts("=begin\n A Ruby program \n=end")
end

5-2(×)
puts File.read("readme.txt")
File.open("readme.txt", "a") do |f|
	f.write("bananas")
end
puts File.read("readme.txt")

5-3(○)
["bin/hallo.py", "ola.lua", "/tmp/hej.cpp"].each do |filename|
	puts File.basename(filename, ".*") + ".rb"
end

5-4(×)
p File.split("/home/john/bookmarks/").join

5-5(×)
file = File.open("hello.rb", "w")
stat = file.stat
mtime1 = stat.mtime
file.puts("new data")
file.flush
mtime2 = stat.mtime

5-6(×)

5-7(×)

5-8(○)
p File.join("pocahontas", "tepee.rb")

5-9(×)
File.open("hats.txt", "w") do |f|
	f.puts(%w[Bowler Deerstalker Dunce\ cap Fedora Fez])
end

File.open("hats.txt") do |f|
	4.times { f.gets() }
	puts f.gets
	puts f.readline
end

5-10(×)
File.open("planets.txt", "w") do |f|
	f.puts(%w[Mercury Venus Earth Mars Jupiter Uranus Neptune])
end
f = File.open("planets.txt")

5-11(×)
["tmp", "tmp/lang", "tmp/lang/ruby", "tmp/lang/python"].each do |dir|
	Dir.mkdir(dir)
end
Dir.chdir("tmp/lang")
Dir.new(".").each do |entry|
	filename = File.join(entry, "rocking.rb")
	File.open(filename, "w")
end
Dir.rmdir("python")

5-12(×)
File.open("authors.txt") do |file|
	2.times {file.gets}
	file.lineo = 0
	puts file.gets
end

5-13(×)
File.open("fancy.txt", "w") do |f|
	f.write("R u b y\n")
	f.puts(["u", "b", "y"])
end
puts File.read("fancy.txt")

5-14(○)

6-1(×)
foo = "foo"
bar = "bar" unless foo == String
puts(bar)

6-2(×)

6-3(○)
ary = []
10.times do |i|
	i.even? ? (i % 3 == 0) ? ary << i : next : next
end
p ary

6-4(×)
foo = ('a'..'z').each_with_index {|i, n| break(i) if n.odd?}
p foo.succ

6-5(○)
mark = '*'
5.downto(1) {|i| print((mark * i) + "\n")}

6-6(○)
(1..31).each_slice(7) do |i|
	i.each {|n| printf("%2d%s", n, "\s")}
	print("\n")
end

6-7(○)
container = [1]
ary = (2..10).to_a
tmp = ary.shift

while tmp
	ary.delete_if {|i| i % tmp == 0}
	container << tmp
	tmp = ary.shift
end
p container

6-8(○)
max = 42
min = 24

while min > 0
	tmp = min
	min = max % min
	max = tmp
end
p max

6-9(○)
def fib(count=9)
	count -= 2
	container = [0, 1]
	until 0 >= count
		container += [(container[-2] + container[-1])]
		count -= 1
	end
	return container
end
p fib

6-10(○)
x = 2.0
y = 1.0

loop do
	z = x / y
	y = (y + z) / 2
	puts(y)
	break	if ((y ** 2).abs - x < Float::EPSILON)
end




























