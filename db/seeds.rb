# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CartSubject.destroy_all
Content.destroy_all
Subject.destroy_all
Comment.destroy_all
Review.destroy_all
Exercise.destroy_all
User.destroy_all
Course.destroy_all

medicina = Course.create!(name: 'Medicina', description: 'Precisa de ajuda em Medicina? Temos o conteúdo completo e ainda mais recursos para uma preparação com excelência.', icon: '<i class="fas fa-stethoscope fa-4x"></i>')
economia = Course.create!(name: 'Economia', description: 'Precisa de ajuda em Economia? Temos o conteúdo completo e ainda mais recursos para uma preparação com excelência.', icon: '<i class="fas fa-square-root-alt fa-3x"></i>')
engenharia = Course.create!(name: 'Engenharia', description: 'Precisa de ajuda em Egenharia? Temos o conteúdo completo e ainda mais recursos para uma preparação com excelência.', icon: '<i class="fas fa-calculator fa-3x"></i>')
user = User.create!(email: "oi@oi.com", password: "123456", course: engenharia)
calculo = Subject.create!(name: 'calculo', description: 'Limites, Derivadas, Integrais')
engenharia.subjects << calculo
engenharia.save!
derivada = Content.create!(name: 'Derivada', description: 'A 2a matéria de cálculo 1', subject: calculo)
calculo.contents << derivada
calculo.save!
comment = Comment.new(description: 'Fiquei com duvida no minuto 52')
comment.user = user
comment.content = derivada
comment.save!

review = Review.new(description: 'Muito bom a aula, 0 estrelas')
review.user = user
review.subject = calculo
review.save!
exercise = Exercise.new(description: 'Joao tinha 3 ovos, cortaram seu role, quantos ele tem agora', name: 'Aplicação de matematica')
exercise.content = derivada
exercise.save!
