3-3
$foo = 1
def bar
	$foo
end

bar
$baz

3-16
def foo a, b
	a + b
end

puts foo(1,2)

3-18
def foo(a, b = 100)
	a + b
end

puts foo(2, 3)
puts foo(1)
puts foo

3-19
def foo(a: , b: 100)
	a + b
end

puts foo(a: 2, b: 3)
puts foo(a: 1)
puts foo
puts foo(a: 2, c: 100)

3-20
def bar(a:, b: 100, **z)
	puts a + b
end

bar(a: 2, c: 100, d: 200)

3-21
if true then
	puts 1
end

3-22
a = if true
	1
end
puts a

3-23
a = 1 if true
p a
a = 2 if false
p a

3-24
b = 3 if false
p b
p c

3-25
a = if false then
	1
elsif false
	2
else
	3
end
p a

3-26
unless false
	p 1
end

3-27
a = true ? 1 : 2
p a

3-28
a = 10
if a then; p a; end
p @a
if @a then; p 1; end

3-29
if true && true; 1; end
if nil && 10; 1; end
if false || true; 1; end
if nil || false; 1; end
if !true; 1; end

3-30
a = nil && 1
puts a
a = 1 || 2
puts a

3-31
b = b || 1
puts b
c ||= 1
puts c

3-32
p 1 && 2
p 1 and 2

3-39
query = <<SQL
	select *
		from my_table;
SQL
p query

3-40
def foo
	<<-RESULT
		Ru
		By
	RESULT
end
p foo

3-41
a = 1
s = <<'TEST'
	#{a}
TEST
p s

3-42
a = 1
s = <<"TEST"
	#{a}
TEST
p a

3-43
a = %*test*
p a

3-44
a = %*"test"*
p a

3-45
a = %[test]
p a

3-46
a = 1
%q!#{a + 1}!
%Q?#{a + 1}?

3-47
a = "ru" + "by"
p (a * 3)

3-48
a = "ru"
p a << "by"
p a

3-49
a ="ルビー"
a.encoding
b = a.encode("SJIS")
b.encoding
a + b

3-51
puts "abcde".length
puts "日本語".length

3-52
進数の指定
puts sprintf("result: %#b", 16)
puts sprintf("result: %#o", 16)
puts sprintf("result: %#x", 16)
puts sprintf("result: %#X", 16)
桁数の指定
puts sprintf("result: %02d", 1)
puts sprintf("result: %03d", 1)
puts sprintf("result: %05.2f", 1.1111)

3-53
puts "result: %02d" % 1 
puts "result: %03d" % 1 
puts "result: %05.2f" % 1 

3-54
puts foo1 = :"foo1"
puts foo2 = :"#{foo1}foo2"
puts foo3 = :'foo3'

3-55
puts %s?foo1?

3-56
v1 = "foo1"
v2 = v1.to_sym
v3 = v2.to_s

3-57
p "foo1".object_id
p "foo1".object_id

p :foo1.object_id
p :foo1.object_id
p :foo2.object_id

3-58
p "foo1" == "foo1"
p "foo1".equal? "foo1"

p :foo1 == :foo1
p :foo1.equal? :foo1

3-59
p "foo1".eql? "foo1"
p 1.0 == 1
p (1.0).eql? 1
p (1.0).eql? 1.0

3-60
v1 = "foo1"
v2 = v1
p v1.equal? v2

3-61
v1 = "foo1"
v2 = v1
v1 += "foo2"
p v1
p v2

3-62
def func v1
	v1.object_id
end

v1 = "foo1"
p v1.object_id
p func(v1)

3-63
def func v1
	v1 += "foo2"
end

v1 = "foo1"
p func v1
p v1

3-64
v1 = "foo1"
v2 = v1
p v1.chop
p v2
p v1.chop!
p v2

3-65
v1 = "foo"
v2 = "foo"
v3 = "foo"

p v1.object_id
p v2.object_id
p v3.object_id

v1 = :foo
v2 = :foo
v3 = :foo

p v1.object_id
p v2.object_id
p v3.object_id

3-66
a = []
b = [10, true, "30"]
p b[0]

3-67
a = [[1, 2], [3, 4], [5, 6]]
p a[0][0]
p a[1][1]

3-68
v1 = %w(hoge foo bar)
p v1.join()
p v1.join("_")

3-69
a = Array.new(5)
p a
p a.length
a = Array.new(2){|index| index + 10}
p a

3-70
a = Array.new(2,){"a"}
a[0].replace("b")
p a

3-71
v1 = [10]
p v1.length
v1[3] = "aa"
p v1.length
p v1[2]
p v1[100]

3-72
v1 = [10, nil, nil, "aa"]
p v1[-1]
p v1[4-1]
p v1[-4]
p v1[4-4]

3-73
a = [0, 1, 2, 3, 4, 5]
p a[2, 3]

3-74
a = [0, 1, 2, 3]
a[1, 2] = "a"
p a

3-75
a = [0, 1, 2, 3]
a[1, 2] = ["a", "b"]
p a

3-76
a = [0, 1, 2, 3]
a[1, 2] = "a", "b"
p a

3-77
a = [0, 1, 2, 3]
a[1, 2] = "a", "b", "c"
p a

3-78
a, b, c = 1, 2, 3
p a
p b
p c

3-79
def foo
	return 1, 2, 3
end
a, b, c = foo
p a
p b
p c

3-80
a, b, c = [1, 2, 3]
(a, b), c = [1, 2], 3

3-81
a, b, c = 1, 2
p a
p b
p c

3-82
a, b = 1, 2, 3
p a
p b

3-83
a = 1, 2
p a

3-84
a, *b = 1, 2, 3
p a
p b

3-85
def foo a, *b
	b
end

p foo(1, 2, 3)

3-86
def foo1 a, *b
	foo2(*b)
end
def foo2 c, *d
	d
end

p foo1(1, 2, 3)

3-87
a = [1, 1, 2, 2]
b = [2, 2, 3, 3]

p a & b
p a | b

3-88
a = [1, 1, 2, 2]
b = [2, 2, 3, 4]

p a + b
p a - b

3-89
a = [1, 1, 2, 2]
c = [1]

p a - c

3-90
p [1, 2] * 3
p [1, 2, 3] * "-"
p [1, 2, 3].join("-")

3-91
a = [2, 3, 4]
for i in a do
	p i
end

3-92
for i,j in [[1, 2], [3, 4]]
	p i + j
end

3-93
for i in [2, 3, 4]
	bar = 1
end
p bar

3-94
[2, 3, 4].each do
	bar = 1
end
p bar

3-95
a = {"foo1" => 1, "foo2" => 2, "foo3" => 3}
p a["foo1"]
p a["foo2"] = 20
p a

3-96
a = {}
p a[:foo1]

3-97
a = {:foo1 => 1, :foo2 => 2, :foo3 => 3}
a = {foo1: 1, foo2: 2, foo3: 3}
p a[:foo1]

3-98
a = Hash.new(5)
p a[:foo1]

3-99
a = Hash[:foo1, 1, :foo2, 2, :foo3, 3]
a = [[:foo1, 1], [:foo2, 2], [:foo3, 3]].to_h
p a[:foo1]


3-100
def foo a, b, c
	c
end
p foo(1, 2, :foo1 => 1, :foo2 => 2)

3-101
foo(1, 2, {:foo1 => 1, :foo2 => 2})

3-102
1..10
"a".."z"
1...10

3-103
p (1..5).include?(3)
p (1..5).include?(6)
p (1..5) == 3
p (1..5) === 3
p (1..5) === 9

3-104
for i in "a".."z"
	p i
end

3-105
a = ["a", "b", "c", "d", "e"]
p a[2,3]
p a[2..3]
p a[2...3]

3-106
a = "abcdef"
p a[1]
p a[1..2]
p a[1...2]

3-107
case 1
when 1 then
	p 1
end

case "abc"
when "abc"
	p 1
when "abc"
	p 2
end

a = 10
b = case a
when 1 then
	1
else
	2
end
p b

3-108
case 3
when 1,2 then; p 1
when 3,4 then; p 2
else p 3
end

3-109
case 7
when 1...5 then; p 1
when 1..10 then; p 2
end

3-110
i = 0
while (0..4) === i do
	p i
	i += 1
end

3-111
i = 0
until i == 5 do
	p i
	i += 1
end

3-112
i = 0
begin
	p i
	i += 1
end while (1..4) === i

3-113
i = 0
p i += 1 while (0..4) === i

3-114
p /Ruby/
p %r(Ruby)
p Regexp.new "Ruby"

3-115
p /Ruby/ === "I love Ruby"

p case "I love Ruby"
	when /Ruby/ then; "Ruby!"
	when /Java/ then; "Java!"
	end

3-116
p /Ruby/ =~ "I love Ruby" 
p "I love Ruby" =~ /Ruby/

3-117
/bb/ =~ "aabbcc"
p $` 
p $&
p $'

3-118
reg = /^(aa|bb)c$/
p reg === "aac"
p reg === "bbc"

3-119
reg = /a[bcd]e[fg]h/
p reg === "abegh"
























	
	


















