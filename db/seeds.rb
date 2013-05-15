CATEGORIES = ['Sex','Drugs','Couches','M2M','W2M','W2W',
              'Games','Toys','Electronics','Parties']

10.times do |i|
  x = Category.create(name: CATEGORIES[i])

  rand(10).times do
    x.posts << Post.create(title: Faker::Name.name, text: Faker::Lorem.sentence )
  end
end
