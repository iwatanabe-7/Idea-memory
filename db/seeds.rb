# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  name: 'テスト太郎',
  email: 'test@example.com',
  encrypted_password: 'testtest',
  password: 'testtest',
)

Mandala.create!(
  name: '大谷翔平のマンダラート',
  user_id: '1',
)

cells_data = [
  ['身体のケア','サプリを飲む','FSQ 90kg', '柔軟性','体づくり','RSQ130kg','スタミナ','可動域','食事'],
  ['身体のケア','サプリを飲む','FSQ 90kg', '柔軟性','体づくり','RSQ130kg','スタミナ','可動域','食事'],
  ['身体のケア','サプリを飲む','FSQ 90kg', '柔軟性','体づくり','RSQ130kg','スタミナ','可動域','食事'],
  ['身体のケア','サプリを飲む','FSQ 90kg', '柔軟性','体づくり','RSQ130kg','スタミナ','可動域','食事'],
  ['身体のケア','サプリを飲む','FSQ 90kg', '柔軟性','体づくり','RSQ130kg','スタミナ','可動域','食事'],
  ['身体のケア','サプリを飲む','FSQ 90kg', '柔軟性','体づくり','RSQ130kg','スタミナ','可動域','食事'],
  ['身体のケア','サプリを飲む','FSQ 90kg', '柔軟性','体づくり','RSQ130kg','スタミナ','可動域','食事'],
  ['身体のケア','サプリを飲む','FSQ 90kg', '柔軟性','体づくり','RSQ130kg','スタミナ','可動域','食事'],
  ['身体のケア','サプリを飲む','FSQ 90kg', '柔軟性','体づくり','RSQ130kg','スタミナ','可動域','食事']
]

9.times do |i|
  9.times do |j|
    Cell.create!(
      body: cells_data[i][j],
      row: i+1,
      column: j+1,
      mandala_id: 1,
    )
  end
end

