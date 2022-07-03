10.times do
  User.create(
    name: Faker::Name.first_name,
    email: Faker::Internet.email,
    password: '12345678',
    password_confirmation: '12345678'
  )
end
  
20.times do |index|
  Post.create(
    user: User.offset(rand(User.count)).first,
    title: "タイトル#{index}",
    arrange_content: "本文#{index}",
    price: 200,
    one_point: "一押し#{index}"
  )
end