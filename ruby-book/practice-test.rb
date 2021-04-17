1(○)

2(○)
x = 0
[1, 2, 3].each do |x|
	print x.to_s + ""
end
print x

3(○)

4(×)
y = false
y && (raise "failed")
puts("succeeded!")

5(○)
(1..10).each do |i| puts i end

6(×)
HOGE = "hoge"
HOGE.gsub!("hoge", "piyo")
print HOGE

7(○)

8(×)
begin
	puta 10 / 0 #ZeroDevisionError
rescue ZeroDivisionError => ex
	print "ZeroDevisionException", ex.message
end

9(×)
p ?A

10(○)
class Hoge < Object ; end

11(○)
class Parent
	attr_reader :name
	def initialize name
		@name = name
	end
end
class Child < Parent
	def initialize name
		@name = "Child"+name
	end
end
puts Child.new("Hoge").name

12(○)
class Integer
	def to_square
		return self * self
	end
end

print 4.to_square

13(○)
p "12abc".to_i

14(○)
a=[1, 2, 3, 4]
p a[1...3]

15(○)
a=[1, 2, 3, 4, 5]
p a[2..-1]

16(×)
a=1, 2, 3
p a.to_s(",")
p a.join(",")
p a.concat(",")
p a.to_a(",")

17(×)
s = "a;b:c;d:e;f"
p s.split(/:|;/)

18(×)
a=[1, 2, 3]
b=[1, 3, 5]
c = a
a = b & c
p a + b + c

19(×)
a=[1, 2, 3, 4]
b=[1, 3, 5, 7]
p a && b

20(○)
def sum (*a)
	total = 0
	a.each {|i| total+=i}
	return total
end

puts sum(1, 2, 3, 4, 5)

21(○)
a=[1,2,3]
b=[1,3,5]
c=[2,3,4]
p a+b-c

22(○)

23(○)
a=["apple", "orange", "grape", "pine"]
a.each_with_index { |item, i| print i,":",item,"\n" }

24(○)
s = ["one","two","three"]
s.shift
s.shift
s.unshift
s.push "four"
p s

25(○)
a = [:a,:a,:b,:c]
a[5] = :e
a.concat([:a,:b,:c])
a.compact
a.uniq
p a

26(○)

27(○)
a = [1,2,3,4,5,6]
p a.collect {|v| v * 2}
p a.map {|v| v * 2}

28(×)
sarray = %w(Apple Orange Grape)
sarray.each {|v| print v, " "}

29(×)
a = ["a", "b", "c"]
b = [1, 2, 3]
a.zip(b).each {|x| p x}
a.zip(b) {|x| p x}
[a, b].zip{|x, y| p [x, y]}
[a, b].transpose.each{|x, y| p [x, y]}

30(○)
s = <<EOB
Hello, Ruby World.
Hi, Ruby World.
Goodbye, Ruby World.
EOB

p s

31(○)
puts "hello".encoding.name

32(○)
a = "Ruby"
b = "Rails"
b = a
a.upcase
print b

33(○)
p "find!find!find!find!find!find".index("!",5)

34(×)
x = "Hello, World.\n"
x.chop
x.chop
x.chomp
p x

35(○)
a="abcdefghijk"
a[1,3] = "x"
print a,"\n"

36(○)
p "hogepiyohogehoge".slice(/o../)

37(×)
puts "0123456789-".delete("^13-56-")

38(×)

39(×)
p "abc def 123 ghi 456".scan(/\d+/).length

40(×)
p 65.chr
p "A".ord

41(○)
p "HogeHOGEhoge"[/[A-Z][^A-Z]+/]

42(×)
h = {"a": 1, "b": 2, "c": 3}
p h

43(○)
h = {1 => "Hoge", 2 => "Piyo", 3 => "fuga"}

44(×)
h = {1 => "Hoge", 2 => "Piyo", 3 => "fuga"}
h.reject {|x, y| x < 2}
p h

45(×)
a = {"Foo" => "Hoge", "Bar" => "Piyo", "Baz" => "Fuga"}
b = {"Foo" => "hoge", "Bar" => "piyo", "Baz" => "fuga"}

p a.update(b).sort{|a, b| a[1] <=> b[1]}

46(○)

47(×)
open("test.txt","r+") do |f|
	data = f.read.chomp
	data.reverse!
	f.rewind
	f.write data
end

48(○)
puts File.join("/","user","bin")

49(○)
t = Time.local(2000,1,1)
print(t.strftime("%Y/%m/%d"))

50(×)
t1 = Time.gm(2010, 1, 1, 0, 0)
t2 = Time.gm(2010, 1, 1, 0, 1)
p t2 - t1













