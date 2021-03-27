# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Role.count == 0
    Role.create(:name => "Administrador")
    Role.create(:name => "SubAdministrador")
    Role.create(:name => "Caja")
    Role.create(:name => "Seguimiento")
    Role.create(:name => "Socio")
    Role.create(:name => "Control de Caja")
end

if Servicetype.count == 0
    Servicetype.create(:name => "Muestra de Organos")
    Servicetype.create(:name => "Citologia Ginecologica")
    Servicetype.create(:name => "PCR")
    Servicetype.create(:name => "Inmuno")
    Servicetype.create(:name => "Base Liquida")
    Servicetype.create(:name => "Citologia No Ginecologica")
end