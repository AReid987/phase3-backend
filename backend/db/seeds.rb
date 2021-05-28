Exercise.destroy_all

10.times do
  Exercise.create(name: Faker::GreekPhilosophers.name, duration: [*1..60].sample)
end
