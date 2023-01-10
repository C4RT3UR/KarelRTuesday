@matrice1 = [43, 34, 6, 73, 7, 33, 73, 87, 443, 7, 32, 8, 442, 6, 2, 5, 0, 44, 3, 4, 342, 66, 554, 7, 56]
@matrice2 = [473, 7, 33, 4, 342, 66, 554, 7, 56, 73, 87, 443, 7, 32, 8, 4423, 34, 6, 9, 2, 5, 0, 44, 64, 3]


puts "La somme de les premier 5 éléments de @matrice1 et les derniers 5 éléments de @matrice2: #{@matrice1[0..4].sum + @matrice2[21..25].sum}"