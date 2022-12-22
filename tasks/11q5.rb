i = 0
x = rand(0.. 50)
y = rand(0.. 50)

while i != (x + y)
	i = gets.chomp.to_i
	if i > (x + y)
		puts "non, plus bas"
	end
	if i < (x + y)
		puts "non, plus haut"
	end
end
	puts "le nombre etait #{x + y}"