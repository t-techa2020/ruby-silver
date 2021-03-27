4-1
class Foo
	def initialize(a)
		@a = a
	end
	def method1
		@a
	end
end
foo1 = Foo.new(1)
foo2 = Foo.new(2)
p foo1.method1
p foo2.method1

4-2
a = Foo
a.new(1)
Foo = 1

4-3
p 1
class Hoge
	p 2
end
p 3

4-4
foo1.class = Foo

4-5
class FooExt < Foo
	def initialize(a,b)
		@b = b
		super a
	end
	def method2(c)
		@a + @b + c
	end
end
fooExt = FooExt.new(3, 4)
p fooExt.method1
p fooExt.method2(5)

4-6
p FooExt.superclass == Foo

4-7
p Foo.ancestors
p FooExt.ancestors

4-8
Foo < Object
Foo > Object

4-9
Foo.instance_methods(false)
FooExt.instance_methods(false)
foo1.instance_variables
fooExt.instance_variables

4-10
class Hoge
	def huga1; end
	def huga2; end
	alias :huga3 :huga1
	undef :huga2
end

p Hoge.instance_methods(false)

4-11
class Hoge
	def method_missing(m, *args)
		p "called:" + m.to_s
		super
	end
end

Hoge.new.no_method

4-12
class Hoge
	def huga1; end
end

class Hoge
	def huga2; end
	alias :huga3 :huga1
	undef :huga2
end

p Hoge.instance_methods(false)

4-13
class String
	def huga; 1; end
end

p "my string".huga

4-14
class Foo; end
class Bar; end
class Baz < Foo
end

class Baz < Bar
end
class Baz < Foo
end
class Baz
end

4-15
module Bar
	def methodA
		@a
	end
end

4-16
p Bar.ancestors
p Bar.instance_methods
p Bar.new

4-17
class FooExt < Foo
	include Bar
end

fooExt = FooExt.new(3, 4)
p fooExt.methodA

4-18
p FooExt.ancestors
p FooExt.superclass
p FooExt.instance_methods(false)

4-19
class FooExt < Foo
	include Bar
	include Bar2
end

4-20
module M1
	def method1; 1; end
end

class C1
	def method1; 2; end
	include M1
end

p C1.new.method1

4-21
foo1 = Foo.new(1)
def foo1.methodB
	@a + 100
end
p foo1.methodB
foo2 = Foo.new(1)
p foo2.methodB

4-22
foo1 = Foo.new(1)
singleton_class = class << foo1
	self
end
p singleton_class

4-23
foo1 = Foo.new(1)
class << foo1
	def methodC; @a + 200; end
end
p foo1.methodC

4-24
class C1
	p self
	def method1
		self
	end
end

c1 = C1.new
p c1.method1

4-25
class C2
	def method1
		def method2
		end
	end
end
p C2.instance_methods(false)
C2.new.method1
p C2.instance_methods(false)







