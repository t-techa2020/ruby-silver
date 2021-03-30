5-1
a = "foo"
a.object_id
a.__id__

5-2
"foo".object_id
"foo".object_id
:foo.object_id
:foo.object_id

5-3
"foo".class
:foo.class

5-4
a = "foo"
a.hash
a.object_id
b = "foo"
b.hash
b.object_id
a.eql?(b)
a.equal?(b)

5-5
a = "foo"
b = "foo"
a.eql?(b)
a == b

5-6
a = "foo"
a.methods

5-7
a = "hoge"
a.object_id
b = a.dup
b.object_id

5-8
a = "abc"
a.freeze
a[0] = 'z'

5-9
a = "string"
a.tainted?
a.taint
a.tainted?
a.untaint
a.tainted?

5-10
class Foo
	def initialize
		@hoge = 1
	end
end

f = Foo.new
f.instance_variables
f.instance_variable_get(:@hoge)
f.instance_variable_set(:@hoge, 2)
f.instance_variable_get(:@hoge)

5-11
class Bar
	def method_missing(name, *args)
		puts name
	end
end

b = Bar.new
b.hoge
"string".hoge

5-12
a = 1.2
a.to_s

class Hoge
	def initialize
		@foo = "bar"
	end
end
hoge = Hoge.new
hoge.to_s
hoge.inspect

5-13
1.9.ceil
1.9.floor
1.9.round
1.9.truncate
-1.1.ceil
-1.1.floor
-1.1.round
-1.1.truncate

5-14
-3.abs

5-15
1.step(100, 2){|n| puts n}

5-16
1.23 & 2

5-17
2.**(4)
2 ** 4

5-18
10 / 3
10 / 3.0

5-19
65.chr
-1.chr

5-20
10.next
10.succ
10.pred

5-21
sum = 0
10.times {|i| sum += i}
puts sum

5-22
10.modulo(3)
10 % 3

5-23
10 | 3
10 & 3
10 ^ 3
~ 10
10 << 1
10 >> 1

5-24
10.to_f

5-25
1.5.step(21.5, 2.5){|f| puts f}

5-26
Rational(a, b = 1)

5-27
a = Rational(1, 2)
a.denominator
a.numerator
0.25.denominator
0.25.numerator

5-28
Rational(1, 2).divmods Rational(1, 3)
Rational(-4, 13).abs

5-29
Rational(1, 2) + Rational(1, 3)
Rational(1, 2) + 1
Rational(1, 2) + 0.25

5-30
a = (1 + 2i)

5-31
a = (1 + 2i)
a.real
a.imaginary
3.real
3.imaginary

5-32
Complex(1, 3).abs
Complex(1, 3).arg
Complex(1, 3).polar

5-33
Complex(1, 1) + 0.5

5-34
Encoding.compatible?(Encoding::UTF_8, Encoding::US_ASCII)
Encoding.compatible?(Encoding::UTF_8, Encoding::Shift_JIS)

5-35
a = "abc"
a.encoding

5-36
a = "abc"
b = a.encode("EUC-JP")
b.encoding

5-37
a = "るびー"
a.encode!("EUC-JP")
a.encoding

5-38
"abc" == "abc"
"abc" == "ABC"
"a" < "b"
"A" > "a"
"aa" > "b"
"a" <=> "b"

5-39
'100' == 100
'100' >= 100

5-40
a = "abc"
b = a.encode("EUC-JP")
b.encoding
a == b
a = "るびー"
b = a.encode("EUC-JP")
a == b

5-41
'abcdefg'.split('d')
'abcdefg'.split(/d/)
"abcde\nfghij".split(/\n/)

5-42
'abcdefg'[2]
'abcdefg'.slice(2)
'abcdefg'[-2]
a = 'abcdefg'
a.slice!(2)
puts a

5-43
'abcdefg'[1..3]
'abcdefg'.slice(1..3)
a = 'abcdefg'
a.slice!(1..3)
puts a

5-44
'abcdefg'[1, 3]
'abcdefg'.slice(1, 3)
'abcdefg'[-2, 3]
a = 'abcdefg'
a.slice!(1, 3)
puts a

5-45
'abcdefg'["bc"]
'abcdefg'.slice("bc")
'abcdefg'["bd"]
a = 'abcdefg'
a.slice!("bc")
puts a

5-46
'abcdefg'[/bc/]
'abcdefg'.slice(/bc/)
'abcdefg'[/bd/]
a = 'abcdefg'
a.slice!(/bc/)
puts a

5-47
a = 'abcdefg'
a[1..3] = 'xyz'
puts a

5-48
a = 'abcdefg-abcdefg'
a.sub(/abc/, 'xyz')
a.gsub(/abc/, 'xyz')

5-49
a = 'abcdefg-abcdefg'
a.sub(/abc/) {|str| 'xyz'}
a.gsub(/abc/) {|str| 'xyz'}

5-50
a = 'aabbccddeeffgg'
a.tr('a-c', 'A-C')
a.tr_s('a-c', 'A-C')

5-51
a = 'aabbccddeeffgg'
a.delete('a-f', 'd-g')

5-52
a = 'aabbccddeeffgg'
a.squeeze('a-e')

5-53
a = 'abc'
a.replace('xyz')
puts a

5-54
a = 'abc'
a.object_id
a << 'def'
a
a.object_id
a = a + 'ghi'
a.object_id
'abc' * 2

5-55
a = 'abcDEF'
a.capitalize
a.upcase
a.downcase
a.swapcase

5-56
a = "abcdef\n"
a.chomp
a.strip
a.lstrip
a.rstrip
a.chop
a.chop.chop
a.chomp.chomp

5-57
a = "abcdef"
a.reverse

5-58
a = "abcdef"
a.length
a.count('a-c')
a.empty?
"".empty?

5-59
a = "るびー"
a.length
a.bytesize

5-60
a = "abc"
a.center(20)
a.center(20, "*")
a.ljust(20)
a.rjust(20, "-")

5-61
a = "abc\tdef\tghi\n"
puts a
puts a.dump

5-62
'440r440T4408'.unpack('m')

5-63
"abcdefg".include?("abc")
"abcdefg".index("cd")
"abcdefg".match(/[c-f]/)
"abcdefg".scan(/[c-d]/)

5-64
"abc123".succ
"123abc".succ
"123xyz".succ
"99999".succ
"zzzzz".succ
"ZZZZZ".succ

5-65
"abc\ndef\nghi".each_line {|c| puts c}
"abc".each_byte {|c| puts c}
"ルビー".each_char {|c| puts c}
"a".upto("c") {|c| puts c}

5-66
"abc".hex
"azc".hex
"0xazc".hex

5-67
"010".oct
"0b010".oct
"0x010".oct

5-68
"123".to_i
"0123".to_i
"0x123".to_i
"".to_i

5-69
"1.23".to_f
"01.23".to_f
"0x1.23".to_f
"".to_f

5-70
a = "abc".to_sym
a.object_id
b = :abc
b.object_id

5-71
a = [1, 2, 3]
a.class

5-72
Array[1, 2, 3]

5-73
Array.new(3, "str")

5-74
Array.new([1, 2, 3])

5-75
Array.new(3) {|i| i * 3}

5-76
a = [1, 2, 3]
a << 4
a.concat [5, 6]
a.insert(3, 9)
a.object_id
b = a + [10]
b.object_id
a = [1, 2, 3]
a.unshift(10)

5-77
a = [1, 2, 3]
a[1] = 10
a
a[1..2] = [11, 12]
a
a[8] = 8
a

5-78
a = [1, 2, 3]
a.fill("s")
a.fill("t", 1..2)
a
a.fill(1..2){|index| index}

5-79
a = [1, 2, 3]
a.object_id
a = [1, 2, 3]
a.object_id
a.replace([4, 5, 6])
a.object_id

5-80
a = [1, 2, 3]
a[1]
a.at(1)
a[1..2]
a.values_at(1)

5-81
a = [1, 2, 3]
a.fetch(4)
a.fetch 4, "ERROR"
a.fetch(4){|n| "ERROR #{n}"}

5-82
a = [1, 2, 3, 4, 5]
a.first
a.last
a.first(3)

5-83
a = [[1, 2], [3, 4], [5, 6], [7, 8]]
a.assoc(3)

5-84
a = [[1, 2], [3, 4], [5, 6], [7, 8]]
a.rassoc(4)

5-85
a = [1, 2, 3, 4, 5]
a.include?(3)
a.include?(10)

5-86
a = [1, 2, 3, 4, 5]
a.index(4)
a.rindex(4)

5-87
a = [1, 2, 3, 4, 5]
a.delete_at(2)
a

5-88
a = [1, 2, 3, 4, 5]
a.delete_if{|n| n % 2 == 0}

5-89
a = [1, 2, 3, 4, 5]
a.delete(3)
a
a.delete(10)
a

5-90
a = [1, 2, 3, 4, 5]
a.clear

5-91
a = [1, 2, 3, 4, 5]
a.slice!(2, 2)
a

5-92
a = [1, 2, 3, 4, 5]
a.shift(2)
a.shift
a

5-93
a = [1, 2, 3, 4, 5]
a.pop(2)
a.pop
a

5-94
a = [1, 2, 3, 4, 5]
a - [1, 2]
a - [1, 3, 5, 7]

5-95
[1, 2, 3] | [1, 3, 5]
[1, 2, 3] & [1, 3, 5]

5-96
[1, 2, 3] == [1, 3, 5]
[1, 2, 3] <=> [1, 3, 5]

5-97
[1, 3, 5, 7, 9].each{|n| puts n * 2}
[1, 3, 5, 7, 9].each_index{|n| puts n * 2}

5-98
[1, 2, 3].cycle{|n| puts n}

5-99
[1, 2, 3].join(", ")

5-100
[1, 2, 3].length
[].length
[].empty?

5-101
a = [1, 3, 5, 2, 4, 6]
a.sort
a
a.sort!
a

5-102
[1, 3, 5, 2, 4, 6].sort{|a, b| a <=> b}
[1, 3, 5, 2, 4, 6].sort{|a, b| b <=> a}

5-103
[1, 1, 2, 3, 3].uniq

5-104
[1, nil, 2, nil, 3].compact

5-105
[1, 2, 3, 4, 5].reverse

5-106
[[[1, 2], 3], [[4, 5], 6]].flatten
[[[1, 2], 3], [[4, 5], 6]].flatten(1)

5-107
[1, 2, 3, 4, 5].map{|n| n * 2}

5-108
[1, 2, 3, 4, 5].shuffle

5-109
[1, 2].product(["a", "b", "c"])

5-110
[1, 2].zip(["a", "b"])
[1, 2].zip(["a", "b"], ["x", "y"])

5-111
[1, 2] * 4

5-112
["ルビー"].pack('m')

5-113
a = {"apple" => "fruit", "coffee" => "drink"}
a.class

5-114
Hash["apple", "fruit", "coffee", "drink"]

5-115
a = Hash.new
a["apple"]
a = Hash.new("NONE")
a["apple"]

5-116
a = Hash.new{|hash, key| hash[key] = nil}
a["apple"]
a = Hash.new {|hash, key| hash[key] = "NONE"}
a["apple"]

5-117
a = Hash.new("NONE")
a.default
a["apple"]
a.default = "Not exists"
a["apple"]

5-118
a = {"apple" => "fruit", "coffee" => "drink"}
a["apple"]

5-119
a = {"apple" => "fruit", "coffee" => "drink"}
a.keys
a.values

5-120
a = {1 => "a", 2 => "b", 3 => "c", 4 => "d"}
a.values_at(1, 3)

5-121
a = {1 => "a", 2 => "b", 3 => "c", 4 => "d"}
a.fetch(5, "NONE")
a.fetch(5){|key| key % 2 == 0}

5-122
a = {1 => "a", 2 => "b", 3 => "c", 4 => "d"}
a.select{|key, value| key % 2 == 0}
a.find_all{|key, value| key % 2 == 0}

5-123
a = {"apple" => "fruit", "coffee" => "drink"}
a["apple"] = "red"
a
a["orange"] = "orange"
a

5-124
a = {"apple" => "fruit", "coffee" => "drink"}
a.delete("apple")
a

5-125
a = {"apple" => "fruit", "coffee" => "drink"}
a.reject{|key, value| value == "drink"}
a

5-126
a = {"apple" => "fruit", "coffee" => "drink"}
a.reject!{|key, value| value == "drink"}
a

5-127
a = {"apple" => "fruit", "coffee" => "drink"}
a.object_id
a.replace({"orange" => "fruit", "tea" => "drink"})
a.object_id

5-128
a = {"apple" => "fruit", "coffee" => "drink"}
a.shift
a

5-129
a = {"apple" => "foods", "coffee" => "drink"}
a.merge({"orange" => "fruit", "tea" => "drink", "apple" => "fruit"})
a
a.merge({"orange" => "fruit", "tea" => "drink"}){|key, self_val, other_val| self_val}

5-130
a = {"apple" => "foods", "coffee" => "drink"}
a.merge!({"orange" => "fruit", "tea" => "drink", "apple" => "fruit"})
a

5-131
a = {"apple" => "foods", "coffee" => "drink"}
a.invert
{"orange" => "fruit", "coffee" => "drink", "apple" => "fruit", "tea" => "drink"}.invert

5-132
a = {"apple" => "foods", "coffee" => "drink"}
a.clear

5-133
a = {"apple" => "fruit", "coffee" => "drink"}
a.size
a.empty?

5-134
a = {"apple" => "fruit", "coffee" => "drink"}
a.key?("apple")
a.key?("orange")

5-135
a = {"apple" => "fruit", "coffee" => "drink"}
a.value?("fruit")
a.key?("foods")

5-136
a = {"apple" => "fruit", "coffee" => "drink"}
a.each{|key, value| puts "#{key} => #{value}\n"}

5-137
a = {"apple" => "fruit", "coffee" => "drink"}
a.each_key{|key| puts "key: #{key}\n"}
a.each_value{|value| puts "value: #{value}\n"}

5-138
a = {4 => "a", 3 => "b", 2 => "c", 1 => "d"}
a.sort
a.sort{|a, b| a[1] <=> b[1]}

5-139
a = {4 => "a", 3 => "b", 2 => "c", 1 => "d"}
a.to_a













