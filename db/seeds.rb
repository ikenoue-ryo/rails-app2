# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env == 'development'
  (1..50).each do |i|
    Board.create(
      name: "ユーザー#{i}",
      title: "歯が痛む",
      body: "本文#{i}",
      furigana: "ふりがな#{i}",
      user_id: "1",
      age: "#{i}",
      address: "福岡県福岡市博多区#{i}",
      tel: "0801234567#{i}",
      email: "test@gmail.com",
      booking: "2020-12-29",
      booking_time: "14:00",
    )
  end
  
  # Tag.create([
  #   { name: '初診' },
  #   { name: '緊急' },
  #   { name: '再診' },
  #   { name: '定期' },
  #   { name: '虫歯' },
  #   { name: '抜歯' },
  # ])
end