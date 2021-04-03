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

5-140
a = :foo
a.object_id
b = :foo
b.object_id

5-141
:foo
Symbol.all_symbols

5-142
:foo.to_s

5-143
dir = Dir.open("/usr/local/bin")
dir.each{|file| puts file}

5-144
Dir.open("/usr/local/bin"){|dir| puts dir.path}

5-145
Dir.pwd

5-146
Dir.chdir("/usr/local")
Dir.pwd
Dir.chdir("/usr/local/bin"){|dir| puts Dir.pwd}
Dir.pwd

5-147
Dir.mkdir("/tmp/foo")
Dir.mkdir("/tmp/bar", 0755)

5-148
Dir.mkdir("/tmp/foo")
Dir.rmdir("/tmp/foo")

5-149
file = File.open('README.md')
file.read
file.close

5-150
File.open('README.md') {|file| file.read}

5-151
f = File.open('shift_jis.txt', 'r:shift_jis:utf-8')

5-152
f = File.open('shift_jis.txt', 'w+:shift_jis:euc-jp')
f.write 'ルビー'.encode('euc-jp')
f.rewind
f.read(4)

5-153
File.open('new-file', "w") {|file| file.write "This is new file."}

5-154
File.mtime('README.md')
File.open('README.md') {|file| file.mtime}

5-155
File.directory?('/usr/local')
File.directory?('/usr/local/bin/zsh')

5-156
File.chmod(0644, 'README.md')
File.chown(501, 20, 'README.md')


5-157
File.utime(Time.now, Time.now, 'README.md')

5-158
File.expand_path('README.md')

5-159
File.delete('README.md')

5-160
File.truncate('README.md', 0)

5-161
File.rename('README.md', 'READ_ME.md')

5-162
File.open('README.md', "w") {|file| file.flock(File::LOCK_EX)}

5-163
io = open('README.md')

5-164
io = open('README.md', 'w+:shift_jis:euc-jp')

5-165
io = open('| ls -la')

5-166
io = open('| ls -la /tmp/bar')

5-167
STDOUT.write('There is new technology.')

5-168
open('README.md'){|io| puts io.read}

5-169
IO.popen('grep -i ruby' 'r+') do |io|
	io.write('This is Ruby Program.')
	io.close_writ
	puts io.read
end

5-170
IO.read("README.md", 5)
IO.read("README.md", 5).encoding

5-171
IO.foreach("INSTALL"){|line| puts line}

5-172
open("INSTALL").readlines

5-173
io = open("INSTALL")
io.gets
io.gets

5-174
io = open("INSTALL")
io.each_byte{|i| puts i}

5-175
io = open("INSTALL")
io.getbyte
io.getbyte

5-176
io = open("INSTALL")
io.each_char{|c| puts c}

5-177
io = open("INSTALL")
io.getc
io.getc

5-178
STDOUT.write('There is new technology')

5-179
STDOUT.puts('Abcdefg', 'Hijklmn')

5-180
$, = "\n"
STDOUT.print('This is first line.', 'This id second line.')

5-181
STDOUT.printf('%010d', 123456)

5-182
STDOUT.putc('a')
STDOUT.putc('0x3042')

5-183
STDOUT << "This" << " " << "is" << " " << "README" << "."

5-184
io = open('README.md', 'w+')
io.write('This is new README')
'cat README.md'
io.flush
'cat README.md'

5-185
io.stat

5-186
io = open('README.md', 'r+')
io.read
io.eof?
io.close
io.closed?

5-187
io = open('sample.txt')
io.read
io.rewind
io.gets
io.lineno
io.lineno = 10
io.gets
io.lineno

5-188
io = open('sample.txt')
io.sync

5-189
io = open('sample.txt')
io.read
io.read
io.rewind
io.read

5-190
io = open('sample.txt')
io.pos
io.pos = 15
io.read

5-191
io = open('sample.txt')
io.seek(10)
io.read
io.seek(-10, IO::SEEK_END)
io.read

5-192
Time.now

5-193
Time.at(1234567890)
Time.at(1234567890, 1234567890)

5-194
Time.mktime(2017)
Time.mktime(2017, 7, 7)

5-195
Time.mktime(0, 0, 0, 7, 7, 2017, 4, 188, false, "JST")

5-196
Time.gm(2017)
Time.gm(2017, 7, 7)

5-197
t = Time.mktime(2017, 1, 2, 3, 4, 5, 6)
t.year
t.mday
t.sec

5-198
t = Time.mktime(2017, 1, 2, 3, 4, 5, 6)
t.wday
t.yday

5-199
t = Time.mktime(2017, 1, 2, 3, 4, 5, 6)
t.dst?
t.gmt?

5-200
t = Time.mktime(2017, 1, 2, 3, 4, 5, 6)
t.gmtoff
t.gmtoff / 3600

5-201
t = Time.mktime(2017, 1, 2, 3, 4, 5, 6)
t.localtime
t.gmtime

5-202
t = Time.mktime(2017, 1, 2, 3, 4, 5, 6)
t.object_id
t1 = t.getlocal
t1.object_id

5-203
t = Time.mktime(2017, 1, 2, 3, 4, 5, 6)
t + 60 * 60 * 3
t - 60 * 60 * 3

5-204
t1 = Time.mktime(2017, 1, 2, 3, 4, 5, 6)
t2 = Time.mktime(2017, 2, 3, 4, 5, 6, 7)
t2 - t1

5-205
t = Time.mktime(2017, 1, 2, 3, 4, 5, 6)
t.to_i
t.to_f

5-206
t = Time.mktime(2017, 1, 2, 3, 4, 5, 6)
t.to_a

5-207
t = Time.mktime(2017, 1, 2, 3, 4, 5, 6)
t.to_s

5-208
t = Time.mktime(2017, 1, 2, 3, 4, 5, 6)
t.strftime("%Y年%m月%d日 %H時%M分%S秒")

5-209
a = /abcdefg/i
a.class

5-210
a = Regexp.new("abcdefg", Regexp::MULTILINE | Regexp::IGNORECASE)

5-211
a = Regexp.new("abc")
a.match("abcdefg")

5-212
a = Regexp.new("abc")
a =~ "abcdefg"
"abcdefg" =~ a

5-213
a = Regexp.new("abc")
a === "abcdefg"

5-214
$_ = "abcdefg"
a = Regexp.new("abc")
~ a

5-215
Regexp.escape("array.push(hash[key])")

5-216
/abcdefg/ =~ "abcdefghijklmnopqrstuvwxyz"
Regexp.last_match
$~

5-217
/(abc)d(efg)/ =~ "abcdefghijklmnopqrstuvwxyz"
Regexp.last_match(0)
$&
Regexp.last_match(1)
$1

5-218
a = Regexp.new("abc")
b = Regexp.new("ABC")
c = Regexp.union(a, b)
c =~ "abc"
Regexp.last_match

5-219
a = Regexp.new("abcdefg", Regexp::MULTILINE | Regexp::IGNORECASE)
a.options
a.options & Regexp::IGNORECASE
a.options & Regexp::EXTENDED

5-220
a = Regexp.new("abcdefg")
a.casefold?
a = Regexp.new("abcdefg", Regexp::MULTILINE | Regexp::IGNORECASE)
a.casefold?

5-221
a = Regexp.new("ルビー")
a.encoding
a = Regexp.new("ルビー".encode("EUC-JP"))
a.encoding

5-222
a = Regexp.new("abcdefg", Regexp::MULTILINE | Regexp::IGNORECASE)
a.source
a.to_s
a.inspect

5-258
[1, 2, 3, 4, 5].map{|i| i ** 2}

5-259
[:a, :b, :c, :d, :e].each_with_index{|v, i| puts "#{v} => #{i}"}

5-260
[1, 2, 3, 4, 5].inject(0){|result, v| result + v ** 2}

5-261
(1..10).each_cons(3) {|items| p items}
(1..10).each_slice(3) {|items| p items}

5-262
[1, 2, 3, 4, 5].reverse_each {|i| puts i}

5-263
[1, nil, 3].all?
[1, nil, 3].any?
[].all?
[].any?

5-264
[1, 2, 3, 4, 5].include?(3)

5-265
[1, 2, 3, 4, 5].find {|i| i % 2 == 0}
[1, 2, 3, 4, 5].find_index {|i| i % 2 == 0}

5-266
[1, 2, 3, 4, 5].select {|i| i % 2 == 0}

5-267
["aaa", "b", "cc"].sort{|a, b| a.length <=> b.length}
["aaa", "b", "cc"].sort_by{|a| a.length}

5-268
(1..10).map{|v| v % 5 + v}
(1..10).max{|a, b| (a % 5 + a) <=> (b % 5 + b)}
(1..10).max_by{|v| v % 5 + v}

5-269
[1, 2, 3, 4, 5].count

5-270
[:a, :b, :c].cycle{|v| p v}

5-271
(1..10).group_by{|v| v % 2}

5-272
[:a, :b, :c].zip([1, 2, 3],["a", "b", "c"])

5-273
[:a, :b, :c].take(2)
[:a, :b, :c].first

5-274
[:a, :b, :c, :d, :e].take_while {|e| e != :d}

5-275
[:a, :b, :c, :d, :e].drop(3)

5-276
[:a, :b, :c, :d, :e].drop_while{|e| e != :c}

5-277
[1, 2, 3, 4, 5].select{|e| e % 2 == 0}
[1, 2, 3, 4, 5].reject{|e| e % 2 == 0}

5-278
a = [1, 2, 3, 4, 5].lazy.select{|e| e % 2 == 0}
b = a.map{|e| e * 2}
c = a.take(3)
c.to_a

5-279
class Sample
	def initialize(value)
		@value = value
	end

	def value
		@value
	end

	def <=> (other)
		other.value <=> self.value
	end
end

5-280
class Sample
	include Comparable

	def initialize(value)
		@value = value
	end

	def value
		@value
	end

	def <=> (other)
		other.value <=> self.value
	end
end

a = Sample.new(10)
b = Sample.new(5)
a < b
a <= b
a == b
a > b
a >= b