Arrayクラス
arry1 = Array.new
p arry1 << 'ele1'
p arry1.concat(['ele2'])
p arry1.insert(1, 'ele3')
p arry1.push('ele4')
p arry1.unshift('ele5')

arry2 = Array.new
p arry2 << 'ele1'
arry2[0] = 'ele0'
p arry2
p arry2.fill('ele')
p arry2.replace(['ele1', 'ele2'])
arry2.keep_if {|ele| ele == 'ele1'}
p arry2

arry3 = Array.new
arry3.concat(['ele0', 'ele1', 'ele2', 'ele3'])
p arry3
arry3.delete('ele0')
p arry3
arry3.delete_at(0)
p arry3
arry3.delete_if {|a| a == 'ele2'}
p arry3
arry3.clear
p arry3

arry4 = ['ele0', 'ele1', 'ele2']
arry4.shift
p arry4
arry4.pop
p arry4

Stringクラス
str1 = 'string'
p str1.insert(0, 'S')
str1[1] ='S'
p str1

str2 = 'string'
p str2.replace('String2')
str2.setbyte(0, 0x41)
p str2

str3 = 'string'
p str3 << '3'
p str3.concat('4')
p str3.prepend('Hello ') 

str4 = 'String'
p str4.clear

Hashクラス
hash1 = {first_name: 'Nichiro', last_name: 'Suzuki'}
p hash1
hash1[:first_name] = 'Sanchiro'
p hash1
hash1[:team] = 'NYY'
p hash1
hash1.store(:team, 'LAA')
p hash1
p hash1.replace({first_name: 'Yochiro', last_name: 'Suzuki'})
p hash1.update({'team' => 'LAA'})
hash1.keep_if{|key, val| key == :first_name}
p hash1

hash2 = {first_name: 'Nichiro', last_name: 'Suzuki'}
hash2.delete(:first_name)
p hash2

scores = {"Alice" => 50, "Bob" => 60, "Carol" => 90, "David" => 40}
scores.delete_if {|key, val| val < 50}
p scores

hash3 = {first_name: 'Nichiro', last_name: 'Suzuki'}
hash3.shift
p hash3
p hash3.clear
