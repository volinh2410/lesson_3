namespace :user do
  task say_hi: :environment do
    puts "hello"
  end
  task create: :environment do
    10_000.times do |i|
      User.create(name: "David", email: "linh@gmail.com")
   end
   
  end
end