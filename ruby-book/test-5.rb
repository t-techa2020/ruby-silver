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










