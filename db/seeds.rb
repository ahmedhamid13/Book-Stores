# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do |t|
    Author.create!(
        name: Faker::Book.author,
        about: Faker::Books::Dune.quote,
    )

    2.times do 
        Genre.create!(
            name: Faker::Book.genre,
        )
    end
    7.times do |t|
        Book.create!(
            title: Faker::Books::Dune.title,
            published_at: Date.today,
            description: Faker::Quote.matz,
            author_id: Author.last.id,
            genre_id: Genre.all.sample.id,
        )
    end
end

5.times do |t1|
    Owner.create!(
        email: Faker::Internet.email, 
        name: Faker::Name.name,
        password: "123456",
    )
    Store.create!(
        name: Faker::FunnyName.name,
        phone: Faker::PhoneNumber.cell_phone,
        about: Faker::Lorem.paragraph,
        owner_id: Owner.last.id,
    )
    2.times do 
        SocialLink.create!(
            site: "WebLink",
            link: Faker::Internet.url,
            store_id: Store.last.id,
        )      
        Address.create!(
            country: Faker::Address.country,
            city: Faker::Address.city,
            street: Faker::Address.street_address,
            region: Faker::Address.city,
            store_id: Store.last.id,
        )
    end

    6.times do |t2|
        StoreBook.create!(
            edition: ['first', 'second', 'third', 'forth', 'fifth'].sample,
            price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
            is_available: Faker::Boolean.boolean(true_ratio: 0.8),
            store_id: Store.last.id,
            book_id: Book.first.id + t1 + t2,
        )
    end
end

10.times do |t1|
    User.create!(
        email: Faker::Internet.email, 
        name: Faker::Name.name,
        password: "123456",
    )
    3.times do |t2|
        Rate.create!(
            rate: Faker::Number.between(from: 1, to: 5),
            user_id: User.last.id,
            book_id: Book.first.id + t1 + t2,
        )
        Review.create!(
            review: Faker::Books::Dune.quote,
            user_id: User.last.id,
            book_id: Book.first.id + t1 + t2,
        )
    end
end

