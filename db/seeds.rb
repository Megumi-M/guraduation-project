# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#20.times do |n|
  #name = Faker::Name.name
  #nickname = Faker::Pokemon.name
  #email = Faker::Internet.email
  #password = "password"
  #telephone = Faker::PhoneNumber.phone_number
  #postal_code = "876-5432"
  #address = Faker::Address.street_address
  #User.create!(name: name,
               #nickname: nickname,
               #telephone: telephone,
               #email: email,
               #password: password,
               #password_confirmation: password,
               #postal_code: postal_code,
               #address: address,
               #)
#end

lessons = [
  { title: 'おいしい和食', content: 'おいしい和食の基本', address: '東京都港区', event_date: 'Sun, 10 Feb 2019 00:00:00 UTC +00:00', close_date: 'Mon, 11 Feb 2019 00:00:00 UTC +00:00',user_id: '4', capacity: '10' },
  { title: 'おいしい中華', content: 'おいしい中華の基本', address: '東京都江戸川区', event_date: 'Sun, 10 Feb 2019 00:00:00 UTC +00:00', close_date: 'Mon, 11 Feb 2019 00:00:00 UTC +00:00',user_id: '4', capacity: '10' },
  { title: 'おいしいフレンチ', content: 'おいしいフレンチの基本', address: '東京都港区', event_date: 'Sun, 10 Feb 2019 00:00:00 UTC +00:00', close_date: 'Mon, 11 Feb 2019 00:00:00 UTC +00:00',user_id: '4', capacity: '10' },
  { title: '喜ばれる和食', content: 'リッチな和食つくり', address: '東京都品川区', event_date: 'Sun, 10 Feb 2019 00:00:00 UTC +00:00', close_date: 'Mon, 11 Feb 2019 00:00:00 UTC +00:00',user_id: '5', capacity: '5' },
  { title: '喜ばれる中華', content: 'リッチな中華、少数精鋭のレッスンです', address: '東京都品川区', event_date: 'Sun, 10 Feb 2019 00:00:00 UTC +00:00', close_date: 'Mon, 11 Feb 2019 00:00:00 UTC +00:00',user_id: '5', capacity: '5' },
  { title: 'ワンランク上のレッスン', content: 'おもてなし料理にぴったりです', address: '東京都品川区', event_date: 'Sun, 10 Feb 2019 00:00:00 UTC +00:00', close_date: 'Mon, 11 Feb 2019 00:00:00 UTC +00:00',user_id: '5', capacity: '5' },
  { title: '母の味', content: '家庭料理の基礎から学びます', address: '東京都江戸川区', event_date: 'Sun, 10 Feb 2019 00:00:00 UTC +00:00', close_date: 'Mon, 11 Feb 2019 00:00:00 UTC +00:00',user_id: '6', capacity: '8' },
  { title: 'パンレッスン', content: 'パンを生地からつくるよ', address: '湘南', event_date: 'Sun, 10 Feb 2019 00:00:00 UTC +00:00', close_date: 'Mon, 11 Feb 2019 00:00:00 UTC +00:00',user_id: '6', capacity: '5' },
  { title: 'お菓子つくり', content: '今回はケーキ', address: '静岡', event_date: 'Sun, 10 Feb 2019 00:00:00 UTC +00:00', close_date: 'Mon, 11 Feb 2019 00:00:00 UTC +00:00',user_id: '7', capacity: '5' },
  { title: '喜ばれる和食', content: 'リッチな和食つくり', address: '東京都品川区', event_date: 'Sun, 10 Feb 2019 00:00:00 UTC +00:00', close_date: 'Mon, 11 Feb 2019 00:00:00 UTC +00:00',user_id: '7', capacity: '5' },
  ]
Lesson.create! lessons