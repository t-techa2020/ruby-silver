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

















