#
# data from http://pt.fifa.com/confederationscup/matches/index.html
desc 'Loads data for Confederations Cup'
task load_confederations_cup: :environment do

  game1 = Category.find_or_create_by(name: 'Brasil vs. Japão').tap do |game|
    game.nominees << Nominee.find_or_create_by(name: 'Brasil')
    game.nominees << Nominee.find_or_create_by(name: 'Japão')
  end

  game2 = Category.create(name: 'México vs Itália').tap do |game|
    game.nominees << Nominee.find_or_create_by(name: 'México')
    game.nominees << Nominee.find_or_create_by(name: 'Itália')
  end

  game3 = Category.create(name: 'Brasil vs. México').tap do |game|
    game.nominees << Nominee.find_or_create_by(name: 'Brasil')
    game.nominees << Nominee.find_or_create_by(name: 'México')
  end

  game4 = Category.create(name: 'Itália vs. Japão').tap do |game|
    game.nominees << Nominee.find_or_create_by(name: 'Itália')
    game.nominees << Nominee.find_or_create_by(name: 'Japão')
  end

  game5 = Category.create(name: 'Itália vs. Brasil').tap do |game|
    game.nominees << Nominee.find_or_create_by(name: 'Itália')
    game.nominees << Nominee.find_or_create_by(name: 'Brasil')
  end

  game5 = Category.create(name: 'Japão vs. México').tap do |game|
    game.nominees << Nominee.find_or_create_by(name: 'Japão')
    game.nominees << Nominee.find_or_create_by(name: 'México')
  end

  Tournament.find_or_create_by(name: 'Confederations Cup').tap do |t|
    t.stages.find_or_create_by(name: 'Fase de Grupos').tap do |stage|
      stage.airs_on = 2.days.from_now
      stage.categories << game1
      stage.categories << game2
      stage.categories << game3
      stage.categories << game4
      stage.categories << game5
    end
  end
end

