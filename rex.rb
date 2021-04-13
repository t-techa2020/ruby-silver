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

p1.call
p1.call
p1.call
p2.call
p2.call

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

def bar(*n1, n2)
  puts n1
  puts n2
end

bar 5, 6, 7, 8

def bar(*n1, n2, *n3)
  puts n1
  puts n2
end

bar 5, 6, 7, 8

17(×)
def foo(n)
	n ** n
end

puts foo (2) * 2

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
























