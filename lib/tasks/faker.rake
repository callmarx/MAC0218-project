namespace :faker do
  desc "Populando o banco com dados falsos para testes"
  task seed: :environment do
    puts "Gerando alguns Usuários com senha 12345..."
    u = User.create!(
      username: "Usuário Teste",
      email: "teste@teste.com",
      about_me: "Testaaandoooooo",
      password: "12345",
    )
    u.add_role "admin"
    u.save
    3.times do
      User.create!(
        username: Faker::Name.name,
        email: Faker::Internet.email,
        about_me: Faker::Simpsons.quote,
        password: "12345",
      )
    end
    puts "Gerando alguns Usuários com senha 12345... Feito!"
    puts "Gerando alguns Posts com lorem ipsum..."
    10.times do
      Post.create!(
        title: Faker::Coffee.blend_name,
        body: Faker::Lorem.paragraph([2,3,4,5].sample),
        post_type: ["offer", "looking"].sample,
        user: User.all.sample,
        subject: Subject.all.sample
      )
    end
    puts "Gerando alguns Posts com lorem ipsum... Feito!"
    puts "Gerando alguns comentarios de Posts..."
    Post.all.each do | post |
      Random.new.rand(1..6).times do
        post.comments.create!(
          body: Faker::Simpsons.quote,
          user: User.all.sample
        )
      end
    end
    puts "Gerando alguns comentarios de Posts... Feito!"
  end

end
