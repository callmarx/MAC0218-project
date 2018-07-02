# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "criando materias basicas no banco..."
Subject.create(title: "Cálculo", specification: "Limites e derivadas. Cálculo diferencial e Integral.")
Subject.create(title: "Estatística", specification: "Probabilidade e estatística.")
Subject.create(title: "Álgebra", specification: "Álgebra abstrata, álgebra linear, álgebra computacional.")
Subject.create(title: "Algoritmos", specification: "Introdução a computação, Lógica de programação, analise de algoritmos.")
puts "criando materias basicas no banco... Feito"
puts "Criando usuário teste@teste.com com senha 12345..."
u = User.create!(
  username: "Usuário Teste",
  email: "teste@teste.com",
  about_me: "Testaaandoooooo",
  password: "12345",
)
u.add_role "admin"
u.save
puts "Criando usuário teste@teste.com com senha 12345... Feito"
