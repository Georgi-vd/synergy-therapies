# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Product.destroy_all

puts "Creations de produits"
soins = { name: "Soins" }
ateliers = { name: "Ateliers" }
actus = { name: "Actus" }

[soins, ateliers, actualités].each do |attributes|
  products = Product.create!(attributes)
  puts "Created #{products.name}"
end

puts "Creations de soins"
soin_1 = Soin.create!(name: "Soin bioénergétique Acmos", description:"La Méthode ACMOS a pour objet de permettre au corps de reprendre le contrôle de ses circuits énergétique afin qu'il retrouve sa capacité d'autogestion et ce, dès le premier bilan. Elle met en œuvre un protocole rigoureux d'investigation et s'appuie continuellement sur la mesure scientifique. Celle-ci est effectuée au moyen d'un appareillage sophistiqué, fruit de longues années de recherche et de mise au point. Des médecins et des spécialistes du monde entier ont collaboré à ces travaux. La spécificité de cette Méthode est qu'elle agit dans le profond", tarif:"150CHF la séance d'1h30", temoignages: "Solange, Nina")
soin_2 = Soin.create!(name: "Traitement à distance", description: "Notre corps matiere est géré par notre corps énergétique. Ce dernier nous informe, par les champs énergétiques, des problèmes que lui pose le corps matière dans sa dimension physique et psychique.", tarif: "150 CHF", temoignages:"Nadege")
soin_3 = Soin.create!(name: "Bain sonore thérapeutique", description: "Votre corps est traversé d'ondes émanant des bols tibétains, permettant de réharmoniser votre état vibratoire de manière rapide.", tarif: "50 CHF", temoignages:"Nadege")

puts "Creations d'ateliers"
atelier_1 = Atelier.create!(name:"Atelier gestion de l'hypersensibilité chez l'enfant", description:"Vous offrir avec votre enfant la capcité de transformer cet état d'hypersensibilité parfois vécu difficilement au quotidien en une force pour votre enfant et pour toute la famille.", tarif:"Programme sur 1,5 mois :
3 ateliers de 5 enfants maximum
Rythme : 1 atelier tous les 15  jours
Durée par atelier : 2 heures
Prix par atelier :  CHF ", temoignages:"XX")
atelier_2 = Atelier.create!(name:"Atelier gestion de l'hypersensibilité chez l'adulte", description:"Vous offrir avec votre enfant la capcité de transformer cet état d'hypersensibilité parfois vécu difficilement au quotidien en une force pour votre enfant et pour toute la famille.", tarif:"Programme sur 1,5 mois :
3 ateliers de 5 enfants maximum
Rythme : 1 atelier tous les 15  jours
Durée par atelier : 2 heures
Prix par atelier :  CHF ", temoignages:"XX")


puts 'Finished!'
