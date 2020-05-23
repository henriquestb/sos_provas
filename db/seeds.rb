# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CartSubject.destroy_all
Subject.destroy_all
User.destroy_all

engenharia = Course.create!(name: 'Engenharia', description: 'Materias de calculo 1')
user = User.create!(email: "oi@oi.com", password: "123456", course: engenharia)
calculo = Subject.create!(name: 'calculo', description: 'Limites, Derivadas, Integrais')
engenharia.subjects << calculo
engenharia.save!
comment = Comment.new(content: 'Fiquei com duvida no minuto 52')
comment.user = user
comment.subject = calculo
comment.save!

review = Review.new(content: 'Muito bom a aula, 0 estrelas')
review.user = user
review.subject = calculo
review.save!
exercise = Exercise.new(content: 'Joao tinha 3 ovos, cortaram seu role, quantos ele tem agora', name: 'Aplicação de matematica')
exercise.subject = calculo
exercise.save!
