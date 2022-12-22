i = 0
x = rand(1.. 100)
matrice = []


while i != x
	i = gets.chomp.to_i
		matrice << x if (i > 0 && i <= 100)
	if i > x
		puts "non, plus bas"
	end
	if i < x
		puts "non, plus haut"
	end
end
	puts " le nombre etait #{x}"
	puts "ca vous a pris #{matrice.length} essais"