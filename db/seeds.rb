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
limite_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1591750366/SOS-Provas/Limite_unhfdg.jpg')
derivada_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/c_scale,w_1254/v1591140853/SOS-Provas/calculo2_flplmq.jpg')
rins_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1591750619/SOS-Provas/rim_sglxsh.jpg')
bexiga_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1591751028/SOS-Provas/bexiga_lqz23e.jpg')
uretra_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1591751102/SOS-Provas/uretra_ivscdg.jpg')
agm_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1591751174/SOS-Provas/agm_zyovtx.jpg')
agf_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1591751223/SOS-Provas/agf_nmw976.jpg')
pdp_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1591751326/SOS-Provas/pdp_mdugol.jpg')
adp_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1591751371/SOS-Provas/adp_ufll3s.jpg')
perineo_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1591751416/SOS-Provas/perineo_juhbrj.jpg')
bs_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1591751582/SOS-Provas/bs_pvlvkg.jpg')
bi_photo = URI.open('https://res.cloudinary.com/masterbi/image/upload/v1591751602/SOS-Provas/bi_ueh4k5.jpg')

CartSubject.destroy_all
Content.destroy_all
Subject.destroy_all
Comment.destroy_all
Review.destroy_all
Exercise.destroy_all
User.destroy_all
Course.destroy_all

#Courses
medicina = Course.create!(name: 'Medicina', description: 'Temos o conteúdo completo e ainda mais recursos para uma preparação com excelência.', icon: '<i class="fas fa-stethoscope fa-4x"></i>')
medicina.photo.attach(io: med_photo, filename: 'medics.jpg', content_type: 'image/jpg')
economia = Course.create!(name: 'Economia', description: 'Temos o conteúdo completo e ainda mais recursos para uma preparação com excelência.', icon: '<i class="fas fa-square-root-alt fa-3x"></i>')
economia.photo.attach(io: eco_photo, filename: 'economics.jpg', content_type: 'image/jpg')
engenharia = Course.create!(name: 'Engenharia', description: 'Temos o conteúdo completo e ainda mais recursos para uma preparação com excelência.', icon: '<i class="fas fa-calculator fa-3x"></i>')
engenharia.photo.attach(io: eng_photo, filename: 'engineering.jpg', content_type: 'image/jpg')
user = User.create!(email: 'oi@oi.com', password: '123456', course: engenharia)

#Subjects
calculo1 = Subject.create!(price: 100, name: 'Cálculo I', description: 'Aula de qualidade com um professor do Ibmec.')
calculo1.photo.attach(io: calc_photo, filename: 'calculus.jpg', content_type: 'image/jpg')
calculo2 = Subject.create!(price: 100, name: 'Cálculo II', description: 'Aula de qualidade com um professor do Ibmec.')
calculo2.photo.attach(io: calc2_photo, filename: 'calculus.jpg', content_type: 'image/jpg')
estatistica2 = Subject.create!(price: 100, name: 'Estatística II', description: 'Aula dinâmica com uma professora com mais 10 anos de experiência.')
estatistica2.photo.attach(io: estat_photo, filename: 'statistics.jpg', content_type: 'image/jpg')
micro1 = Subject.create!(price: 100, name: 'Micro I', description: 'Fundamentos de microeconomia.')
micro1.photo.attach(io: micro_photo, filename: 'micro.jpg', content_type: 'image/jpg')
micro2 = Subject.create!(price: 100, name: 'Micro II', description: 'Microeconomia avançada.')
micro2.photo.attach(io: micro2_photo, filename: 'micro.jpg', content_type: 'image/jpg')
macro1 = Subject.create!(price: 100, name: 'Macro I', description: 'Fundamentos de macroeconomia.')
macro1.photo.attach(io: macro_photo, filename: 'macro.jpg', content_type: 'image/jpg')
macro2 = Subject.create!(price: 100, name: 'Macro II', description: 'Macroeconomia avançada.')
macro2.photo.attach(io: macro2_photo, filename: 'macro.jpg', content_type: 'image/jpg')
anatomia1 = Subject.create!(price: 100, name: 'Anatomia I', description: 'Conteúdo aprofundado.')
anatomia1.photo.attach(io: anato_photo, filename: 'anatomy.jpg', content_type: 'image/jpg')
anatomia2 = Subject.create!(price: 100, name: 'Anatomia II', description: 'Conteúdo aprofundado.')
anatomia2.photo.attach(io: anato2_photo, filename: 'anatomy.jpg', content_type: 'image/jpg')
bioquimica = Subject.create!(price: 100, name: 'Bioquímica', description: 'Conteúdo aprofundado.')
bioquimica.photo.attach(io: bioqui_photo, filename: 'bioqui.jpg', content_type: 'image/jpg')
fisiologia = Subject.create!(price: 100, name: 'Fisiologia', description: 'Conteúdo aprofundado.')
fisiologia.photo.attach(io: fisio_photo, filename: 'fisio.jpg', content_type: 'image/jpg')
imunologia = Subject.create!(price: 100, name: 'Imunologia', description: 'Conteúdo aprofundado.')
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
limite = Content.create!(name: 'Limite', description: 'O ponto em que a derivada se iguala a 0.',order: 0, subject: calculo1)
limite.photo.attach(io: limite_photo, filename: 'limite.jpg', content_type: 'image/jpg')
rins = Content.create!(name: 'rins', description: 'Rim é o órgão responsável por toda a filtragem dos fluidos que circulam no nosso organismo.', pdf: 'https://s3-sa-east-1.amazonaws.com/prd-multimedia-store/turma.material/230670/paper%206.pdf',order: 0, subject: anatomia1)
rins.photo.attach(io: rins_photo, filename: 'rins.jpg', content_type: 'image/jpg')
bexiga = Content.create!(order: 1, name: 'bexiga', description: 'Bexiga é o órgão que faz estoque de urina no nosso organismo. A bexiga tem capacidades diferentes para o homem e para a mulher.', subject: anatomia1)
bexiga.photo.attach(io: bexiga_photo, filename: 'bexiga.jpg', content_type: 'image/jpg')
uretra = Content.create!(order: 2, name: 'uretra', description: 'Uretra é o canal responsável por conduzir a urina da nossa bexiga até o ambiente externo.', subject: anatomia1)
uretra.photo.attach(io: uretra_photo, filename: 'uretra.jpg', content_type: 'image/jpg')
aparelho_genital_masculino = Content.create!(order: 3, name: 'aparelho genital masculino', description: 'Aparelho genital masculino ou aparelho reprodutor masculino é o órgão característico do sexo masculino responsável tanto pela eliminação da urina quanto pela reprodução.', subject: anatomia1)
aparelho_genital_masculino.photo.attach(io: agm_photo, filename: 'agm.jpg', content_type: 'image/jpg')
aparelho_genital_feminino = Content.create!(order: 4, name: 'aparelho genital feminino', description: 'Aparelho genital feminino ou aparelho reprodutor feminino é o órgão característico do sexo feminino que é responsável tanto pela eliminação de urina quanto pela reprodução.', subject: anatomia1)
aparelho_genital_feminino.photo.attach(io: agf_photo, filename: 'agf.jpg', content_type: 'image/jpg')
paredes_da_pelve = Content.create!(order: 5, name: 'paredes da pelve', description: 'A proteção para os órgãos situados na cavidade abdominal depende, principalmente, de sua musculatura ântero-lateral que, além desta função, colabora com os músculos do dorso nos movimentos do tronco, na manutenção da posição ereta e ainda estabiliza a pelve quando, em decúbito dorsal ou ventral, se movem os membros inferiores.', subject: anatomia1)
paredes_da_pelve.photo.attach(io: pdp_photo, filename: 'pdp.jpg', content_type: 'image/jpg')
assoalho_da_pelve = Content.create!(order: 6,name: 'assoalho da pelve', description: 'O assoalho pélvico é um conjunto de músculos e ligamentos que fazem a sustentação dos órgãos pélvicos como bexiga, útero, reto, intestino e todo conteúdo que fica na pelve, parte baixa do abdômen.', subject: anatomia1)
assoalho_da_pelve.photo.attach(io: adp_photo, filename: 'adp.jpg', content_type: 'image/jpg')
perineo = Content.create!(order: 7,name: 'parineo', description: 'Períneo é uma região que fica entre o ânus e a vagina e que serve de sustentação para todos os órgãos pélvicos (bexiga, útero, reto, intestino e todo conteúdo que fica na pelve, parte baixa do abdômen).', subject: anatomia1)
perineo.photo.attach(io: perineo_photo, filename: 'perineo.jpg', content_type: 'image/jpg')
biceps_superior = Content.create!(order: 8,name: 'biceps superior', description: 'Na anatomia humana, o bíceps, também o bíceps braquial, é um músculo de duas cabeças que fica no braço entre o ombro e o cotovelo. As duas cabeças surgem na escápula e juntam-se para formar uma única barriga muscular que está presa ao antebraço superior.', subject: anatomia1)
biceps_superior.photo.attach(io: bs_photo, filename: 'bs.jpg', content_type: 'image/jpg')
biceps_inferior = Content.create!(order: 9,name: 'biceps inferior', description: 'Na anatomia humana, o bíceps, também o bíceps braquial, é um músculo de duas cabeças que fica no braço entre o ombro e o cotovelo. As duas cabeças surgem na escápula e juntam-se para formar uma única barriga muscular que está presa ao antebraço superior.', subject: anatomia1)
biceps_inferior.photo.attach(io: bi_photo, filename: 'bi.jpg', content_type: 'image/jpg')


engenharia.subjects << calculo1
engenharia.save!
derivada = Content.create!(name: 'Derivada', description: 'A 2a matéria de cálculo 1',order: 1, subject: calculo1)
derivada.photo.attach(io: derivada_photo, filename: 'derivada.jpg', content_type: 'image/jpg')
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

exercise = Exercise.new(answer: 'Aorta', question: 'Qual a arteria que passa pelo lado esquerdo do coração e é reponsável por bombear sangue?', order: 0)
exercise.content = rins
exercise.save!

exercise = Exercise.new(answer: 'Arteria Pulmonar', question: 'Qual a arteria que passa pelo lado direita do coração e é reponsável por bombear sangue?',order: 1)
exercise.content = rins
exercise.save!

exercise = Exercise.new(answer: 'Amputação de uma parte do rim', question: 'Qual a consequência de beber todos os dias 330ml de cerveja para os seus rins depois de 5 anos?', order: 2)
exercise.content = rins
exercise.save!


