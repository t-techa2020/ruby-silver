1-1
n = 10
n.times do |i|
	puts i + n
end

1-2

1-3(○)

1-4
a = [1, 2, 3]
b = [4, 5, 6]
p a.zip(b).first

1-5
s = 0xBacFace
s += 1
puts s

1-6(○)

1-7(○)
p (1...5).to_a.map{|i| i * 10}

1-8

1-9(○)
10.*(0xFace)

1-10(○)
p "abcdefg"[2, 3]

2-1(○)
str = "ABQUOFNI".slice(3, 2)
puts(str)

2-2
puts ("abcdefghijklmnopqrstuvwxyz".scan(/.{3}/))

2-3(○)
p /[^P|p]rogramming/ =~ "Arogramming"

2-4(○)
p "sheep,hummingbird,rabbit".index(/,/, 10)

2-5
p ["foo\r\n", "bar\n", "baz\n\r"].map {|i| i.chomp}

2-6(○)
p((0...10).find {|i| i > 10})

2-7(○)
p "abcde-fghijklmno-pqrstuv-wxyz".delete("f-u-")

2-8(○)
str = "Ruby"
p str[0..-2].swapcase

2-9
text = <<-END
	foo
	bar
	baz
	END
p text

2-10
str = "foobarbaz\r\n\r\n"
p str.chomp('').chop.chop.reverse











