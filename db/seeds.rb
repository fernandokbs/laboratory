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

# if Office.count == 0
#     Office.create(:name => "Tuxtla Gutierrez", :direction => "Calle central", :phone => 552323423, :manager => "DRA. DIOCELINA VIRUETTE PONTIGO", :position => "ANATOMOPATOLOGA-CITOPATOLOGA")
# end

if PcrType.count == 0
    PcrType.create(:name => "HPV59 (alto riesgo).")
    PcrType.create(:name => "HPV54 (bajo riesgo).")
    PcrType.create(:name => "HPV42 (BAJO RIESGO).")
    PcrType.create(:name => "HPV53 (bajo riesgo), HPV52 (alto riesgo), HPV70 (bajo riesgo).")
    PcrType.create(:name => "HPV56 (alto riesgo).")
end

if Classification.count == 0
    Classification.create(:name => "Patologia")
    Classification.create(:name => "Citologia")
    Classification.create(:name => "Estudios Especiales")
    Classification.create(:name => "PCR")
    Classification.create(:name => "InmunoHistoquimica")
end

if Service.count == 0
    Service.create(:name => 'Resección')
    Service.create(:name => 'Apendicectomía')
    Service.create(:name => 'Biopsia')
    Service.create(:name => 'Tumorectomía')
    Service.create(:name => 'Biopsia (menor de 4cm.)')
    Service.create(:name => 'Apendicectomía')
end

if SaleType.count == 0
    SaleType.create(:name => "EFECTIVO")
    SaleType.create(:name => "CHEQUE")
    SaleType.create(:name => "ELECTRONICO")
end