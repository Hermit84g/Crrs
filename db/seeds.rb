# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Rselect.create(id: 1, rselname:'保管番号', rselval:'1')
Rselect.create(id: 2, rselname:'保存番号', rselval:'2')
Rselect.create(id: 3, rselname:'整理番号', rselval:'3')
Rselect.create(id: 4, rselname:'仮保管番号', rselval:'4')
Division.create(id: 1, division:'C_Case')
Division.create(id: 2, division:'T_Case')
Division.create(id: 3, division:'P_Case')
Division.create(id: 4, division:'Trial')
Division.create(id: 5, division:'Special')
Division.create(id: 6, division:'J_Team')
Division.create(id: 7, division:'R_Team')
Division.create(id: 8, division:'C_Team')
Division.create(id: 9, division:'S_Team')

