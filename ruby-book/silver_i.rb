1(○)

2(○)
def foo(a, *b)
	p a
end
foo(1, 2, 3, 4)

3(○)
puts ({"members" => 193, "year" => 2014}.size)

4(○)
t = Time.now + (60*60*24)
p t

5(×)

6(○)
(5..8).each_with_index do |val,i|
	puts "#{i} #{val}"
end

7(○)
p 100.downto(90).select{|x| x % 2 == 0}

8(○)
p [1,1,2,3,5,8].map｛|x| x * 2}
p [1,1,2,3,5,8].collect｛|x| x * 2}

9(○)
puts "Ruby on Rails".delete("Rails")

10(○)
doc = <<-EOF
	The quick brown fox
	jumps over the lazy dog
	EOF
p doc

11(○)
h = {1 => 2, 3 => 4}
h.clear
p h

ary = [1, 2]
ary.clear
p ary

12(○)
a = [1, 2, 3, 4, 5]
p a[0..2]
p a.slice(0, 3)

13(○)

14(×)

15(○)
File.open("foo.txt","r") do |io|
	puts io.gets
	puts io.read
  io.rewind
  p lines = io.readlines
end

16(○)
mozart = ["Symphony","Piano Concerto", "Violin Concerto","Horn Concerto","Violin Sonata"]
listend = ["Symphony","Violin Concerto","Horn Concerto"]
p mozart - listend

17(○)
odd = [1,3,5]
even = [2,4,6]
num = odd + even
p num.sort

18(○)
/^[hc].*o$/i

19(○)
Greeting = "Hello Ruby"
Greeting = "Hi Ruby"
p Greeting

20(○)
p File.join("ruby", "exam","silver")

21(○)
class Surface
  attr_reader :s
  def initialize(x,y)
  	@s = x * y
  end
end

class Volume < Surface
  attr_reader :v
  def initialize(x,y,z)
    super(x,y)
  	@v = x * y * z
  end
end

a = Volume.new(2,5,5)
puts "#{a.v},#{a.s}"

22(×)
string = "test code"
string.slice(0,4)
p string

23(○)
puts "ruby".encoding.name

24(○)
cc = {"nz"=>"New Zealand", "ru"=>"Russia", "ar"=>"Argentina"}

p cc.has_key?('nz')
p cc.key?('nz')
p cc.include?('nz')
p cc.member?('nz')

25(○)
p "Hello there".class
p String.superclass

class Foo; end
class Bar < Foo; end
p Foo.superclass
p Bar.superclass

26(×)
s = "To be or not to be, that is the question."
hash = Hash.new(0)
s.scan(/\w+/) {|i| hash[i] += 1}
p hash["be"]

27(×)

28(○)
s = "foo"
begin
	s[4] = ?b
rescue IndexError
	puts "error"
end

29(○)
ary = []
ary << 1 && false
true || ary << 2
false && ary << 3
false || ary << 4
p ary

30(×)
p "foo" * 2 ** 2

31(×)
foo = [1, 2, 3]
bar = foo
baz = foo.dup

bar[3] = 4
p foo
p bar
p baz

32(○)

33(○)
str = "a,b,c,d"
p str.split(/,/, 2)

34(○)
class Object
	def greeting
		print "How are you?\n"
	end
end

[1,2].greeting

35(○)
/[0-9]{3}-[0-9]{4}/

36(×)

37(○)
File.open("foo.txt") do |io|
	io.write(Time.now.strftime("%Y/%m/%d"))
end

38(×)

39(○)
puts "0123456789".delete("0-58-")

40(○)
p "100,200,300,400,500".split(",").join("\n")

41(○)
a = "foo"
b = "foo"

puts a.eql?(b)
puts a.equal?(b)

42(○)
numbers = [3,89,40,39,29,10,50,59,69]
num = numbers.inject do |i,j|
	i > j ? i : j
end
p num

43(○)

44(○)

45(×)

46(○)
class Foo
	@@num = 0
	def self.count
		@@num += 1
	end
end

class Bar < Foo
end

puts Foo.count
puts Bar.count

47(○)
unless false || nil
	print "Hello\n"
end

48(○)
numbers = (1..20).to_a
p numbers.detect{|x| x % 5 == 0}

49(×)
class NonasciiError < StandardError
end

File.open("sample.txt") do |io|
	io.each_line do |str|
		begin
			raise(NonasciiError, "non ascii character detected") unless str.ascii_only?
		rescue => ex
			puts "#{ex.message} : #{str}"
		end
	end
end

50(○)



















