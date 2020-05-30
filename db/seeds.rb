# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

med_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1590865036/SOS-Provas/Medicos_fixdfz.jpg')
eco_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1590865022/SOS-Provas/Economics_aq7hrf.jpg')
eng_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1590868430/SOS-Provas/Engineering_mjp0ko.jpg')

CartSubject.destroy_all
Content.destroy_all
Subject.destroy_all
Comment.destroy_all
Review.destroy_all
Exercise.destroy_all
User.destroy_all
Course.destroy_all

#Courses
medicina = Course.create!(name: 'Medicina', description: 'Precisa de ajuda em Medicina? Temos o conteúdo completo e ainda mais recursos para uma preparação com excelência.', icon: '<i class="fas fa-stethoscope fa-4x"></i>')
medicina.photo.attach(io: med_photo, filename: 'medics.jpg', content_type: 'image/jpg')
economia = Course.create!(name: 'Economia', description: 'Precisa de ajuda em Economia? Temos o conteúdo completo e ainda mais recursos para uma preparação com excelência.', icon: '<i class="fas fa-square-root-alt fa-3x"></i>')
economia.photo.attach(io: eco_photo, filename: 'economics.jpg', content_type: 'image/jpg')
engenharia = Course.create!(name: 'Engenharia', description: 'Precisa de ajuda em Egenharia? Temos o conteúdo completo e ainda mais recursos para uma preparação com excelência.', icon: '<i class="fas fa-calculator fa-3x"></i>')
engenharia.photo.attach(io: eng_photo, filename: 'engineering.jpg', content_type: 'image/jpg')
user = User.create!(email: 'oi@oi.com', password: '123456', course: engenharia)

#Subjects
calculo1 = Subject.create!(name: 'Cálculo I', description: 'Aula de qualidade com um professor do Ibmec.')
calculo2 = Subject.create!(name: 'Cálculo II', description: 'Aula de qualidade com um professor do Ibmec.')
estatistica2 = Subject.create!(name: 'Estatística II', description: 'Aula dinâmica com uma professora com mais 10 anos de experiência.')
micro1 = Subject.create!(name: 'Micro I', description: 'Fundamentos de microeconomia.')
micro2 = Subject.create!(name: 'Micro II', description: 'Microeconomia avançada.')
macro1 = Subject.create!(name: 'Macro I', description: 'Fundamentos de macroeconomia.')
macro2 = Subject.create!(name: 'Macro II', description: 'Macroeconomia avançada.')
anatomia1 = Subject.create!(name: 'Anatomia I', description: 'Conteúdo aprofundado.')
anatomia2 = Subject.create!(name: 'Anatomia II', description: 'Conteúdo aprofundado.')
bioquimica = Subject.create!(name: 'Bioquímica', description: 'Conteúdo aprofundado.')
fisiologia = Subject.create!(name: 'Fisiologia', description: 'Conteúdo aprofundado.')
imunologia = Subject.create!(name: 'Imunologia', description: 'Conteúdo aprofundado.')

#Courses Subjects
CourseSubject.create!(course: engenharia, subject: calculo1)
CourseSubject.create!(course: engenharia, subject: calculo2)
CourseSubject.create!(course: engenharia, subject: estatistica2)
CourseSubject.create!(course: economia, subject: calculo1)
CourseSubject.create!(course: economia, subject: calculo2)
CourseSubject.create!(course: economia, subject: micro1)
CourseSubject.create!(course: economia, subject: micro2)
CourseSubject.create!(course: economia, subject: macro1)
CourseSubject.create!(course: economia, subject: macro2)
CourseSubject.create!(course: economia, subject: estatistica2)
CourseSubject.create!(course: medicina, subject: anatomia1)
CourseSubject.create!(course: medicina, subject: anatomia2)
CourseSubject.create!(course: medicina, subject: bioquimica)
CourseSubject.create!(course: medicina, subject: fisiologia)
CourseSubject.create!(course: medicina, subject: imunologia)

#Contents
limite = Content.create!(name: 'Limite', description: 'O ponto em que a derivada se iguala a 0.', subject: calculo1)

engenharia.subjects << calculo1
engenharia.save!
derivada = Content.create!(name: 'Derivada', description: 'A 2a matéria de cálculo 1', subject: calculo1)
calculo1.contents << derivada
calculo1.save!

comment = Comment.new(description: 'Fiquei com duvida no minuto 52')
comment.user = user
comment.content = derivada
comment.save!

review = Review.new(description: 'Muito bom a aula, 0 estrelas')
review.user = user
review.subject = calculo1
review.save!

exercise = Exercise.new(description: 'Joao tinha 3 ovos, cortaram seu role, quantos ele tem agora', name: 'Aplicação de matematica')
exercise.content = derivada
exercise.save!
