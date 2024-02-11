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
  name: '大谷翔平選手のマンダラート',
  user_id: '1',
)

cells_data = [
  ['身体のケア','サプリを飲む','FSQ 90kg', '柔軟性','体づくり','RSQ130kg','スタミナ','可動域','食事'],
  ['インステップ改善','体幹強化','軸をぶらさない', 'リリースポイントの安定','コントロール','不安をなくす','下肢の強化','体を開かない','メンタルコントロールをする'],
  ['角度をつける','上からボールを叩く','リストの強化', '力まない','キレ','下半身主導','ボールを前でリリース','回転数アップ','可動域'],
  ['はっきりとした目標を持つ','一喜一憂しない','頭は冷静に心は熱く', 'ピンチに強い','メンタル','雰囲気に流されない','波を作らない','勝利への執念','仲間を思いやる心'],
  ['体づくり','コントロール','キレ', 'メンタル','ドラ1 8球団','スピード160km/h','人間性','運','変化球'],
  ['軸でまわる','下肢の強化','体重の増加', '体幹強化','スピード160km/h','肩周りの強化','可動域','ライナーキャッチボール','ピッチングを増やす'],
  ['感性','愛される人間','計画性', '思いやり','人間性','感謝','礼儀','信頼される人間','継続力'],
  ['挨拶','ゴミ拾い','部屋の掃除', '道具を大切に扱う','運','審判さんへの態度','プラス思考','応援される人間になる','本を読む'],
  ['カウントボールを増やす','フォーク完成','スライダーのキレ', '遅く落差のあるカーブ','変化球','左打者への決め球','ストレートと同じフォームで投げる','ストライクからボールに投げるコントロール','奥行きをイメージ']
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

