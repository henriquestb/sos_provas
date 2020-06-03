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
micro_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/c_scale,w_1428/v1591137731/SOS-Provas/money_xx4p3q.jpg')
micro2_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/c_scale,w_1430/v1591140848/SOS-Provas/micro2_izjanm.jpg')
macro_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/c_scale,w_1378/v1591139212/SOS-Provas/People_zeoomr.jpg')
macro2_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/c_scale,w_1263/v1591140842/SOS-Provas/macro2_urmare.jpg')
estat_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/c_scale,w_1925/v1591137720/SOS-Provas/Estati%CC%81stica_uwyfz9.jpg')
calc_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/c_scale,w_1486/v1591137720/SOS-Provas/Ca%CC%81lculo_ed4dqg.jpg')
calc2_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/c_scale,w_1254/v1591140853/SOS-Provas/calculo2_flplmq.jpg')
bioqui_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/c_scale,w_1363/v1591137711/SOS-Provas/Bioqui%CC%81mica_emhzvy.jpg')
imuno_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/c_scale,w_1181/v1591137713/SOS-Provas/national-cancer-institute-L7en7Lb-Ovc-unsplash_qjg7sm.jpg')
anato_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/c_scale,w_1415/v1591137708/SOS-Provas/Anatomia_bsihoh.jpg')
anato2_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/c_scale,w_1367/v1591140849/SOS-Provas/skull_rnrw7q.jpg')
fisio_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/c_scale,w_1046/v1591137703/SOS-Provas/Fisiologia_bcrxhd.jpg')

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
calculo1.photo.attach(io: calc_photo, filename: 'calculus.jpg', content_type: 'image/jpg')
calculo2 = Subject.create!(name: 'Cálculo II', description: 'Aula de qualidade com um professor do Ibmec.')
calculo2.photo.attach(io: calc2_photo, filename: 'calculus.jpg', content_type: 'image/jpg')
estatistica2 = Subject.create!(name: 'Estatística II', description: 'Aula dinâmica com uma professora com mais 10 anos de experiência.')
estatistica2.photo.attach(io: estat_photo, filename: 'statistics.jpg', content_type: 'image/jpg')
micro1 = Subject.create!(name: 'Micro I', description: 'Fundamentos de microeconomia.')
micro1.photo.attach(io: micro_photo, filename: 'micro.jpg', content_type: 'image/jpg')
micro2 = Subject.create!(name: 'Micro II', description: 'Microeconomia avançada.')
micro2.photo.attach(io: micro2_photo, filename: 'micro.jpg', content_type: 'image/jpg')
macro1 = Subject.create!(name: 'Macro I', description: 'Fundamentos de macroeconomia.')
macro1.photo.attach(io: macro_photo, filename: 'macro.jpg', content_type: 'image/jpg')
macro2 = Subject.create!(name: 'Macro II', description: 'Macroeconomia avançada.')
macro2.photo.attach(io: macro2_photo, filename: 'macro.jpg', content_type: 'image/jpg')
anatomia1 = Subject.create!(name: 'Anatomia I', description: 'Conteúdo aprofundado.')
anatomia1.photo.attach(io: anato_photo, filename: 'anatomy.jpg', content_type: 'image/jpg')
anatomia2 = Subject.create!(name: 'Anatomia II', description: 'Conteúdo aprofundado.')
anatomia2.photo.attach(io: anato2_photo, filename: 'anatomy.jpg', content_type: 'image/jpg')
bioquimica = Subject.create!(name: 'Bioquímica', description: 'Conteúdo aprofundado.')
bioquimica.photo.attach(io: bioqui_photo, filename: 'bioqui.jpg', content_type: 'image/jpg')
fisiologia = Subject.create!(name: 'Fisiologia', description: 'Conteúdo aprofundado.')
fisiologia.photo.attach(io: fisio_photo, filename: 'fisio.jpg', content_type: 'image/jpg')
imunologia = Subject.create!(name: 'Imunologia', description: 'Conteúdo aprofundado.')
imunologia.photo.attach(io: imuno_photo, filename: 'imuno.jpg', content_type: 'image/jpg')

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
