#encoding: UTF-8
#

oscar = Event.find_or_create_by!(name: 'Oscar Picks').tap do |o|
  o.airs_on = 5.days.from_now
  o.save!
end

oscar.categories.destroy_all

oscar.categories.find_or_create_by!(name: 'Best Picture').tap  do |c|
  c.nominees.create(name: 'Amour')
  c.nominees.create(name: 'Life of Pi')
  c.nominees.create(name: 'Argo')
  c.nominees.create(name: 'Lincoln')
  c.nominees.create(name: 'Beasts of the Southern Wild')
  c.nominees.create(name: 'Silver Linings Playbook')
  c.nominees.create(name: 'Django Unchained')
  c.nominees.create(name: 'Zero Dark Thirty')
  c.nominees.create(name: 'Les Miserables')
end

oscar.categories.find_or_create_by!(name: 'Actor in a Leading Role').tap do |c|
  ['Bradey Cooper', 'Joaquin Phoenix', 'Daniel Day-Lewis', 'Denzel Washington', 'Hugh Jackman'].each do |a|
    c.nominees.create(name: a)
  end
end

oscar.categories.find_or_create_by!(name: 'Acress in a Leading Role').tap do |c|
  ['Jessica Chastain', 'Quvenzhané Wallis', 'Jennifer Lawrence', 'Naomi Watts', 'Emmanuelle Riva'].each do |a|
    c.nominees.create(name: a)
  end
end


ufc = Event.find_or_create_by!(name: 'UFC 157 Picks').tap do |o|
  o.airs_on = 4.days.from_now
  o.save!
end

ufc.categories.destroy_all

ufc.categories.find_or_create_by!(name: 'Women\'s Bantamweight').tap  do |c|
  c.nominees.create(name: 'Ronda Rousey')
  c.nominees.create(name: 'Liz Carmouche')
end

ufc.categories.find_or_create_by!(name: 'Light Heavyweight').tap do |c|
  c.nominees.create(name: 'Lyoto Machida')
  c.nominees.create(name: 'Dan Henderson')
end

ufc.categories.find_or_create_by!(name: 'Bantamweight').tap do |c|
  c.nominees.create(name: 'Urijah Faber')
  c.nominees.create(name: 'Ian Menjivar')
end

ufc.categories.find_or_create_by!(name: 'Welterweight #1').tap do |c|
  c.nominees.create(name: 'Court McGee')
  c.nominees.create(name: 'Josh Neer')
end

ufc.categories.find_or_create_by!(name: 'Welterweight #2').tap do |c|
  c.nominees.create(name: 'Josh Koshcheck')
  c.nominees.create(name: 'Robbie Lawler')
end



ufc = Event.find_or_create_by!(name: 'UFC 168 Picks').tap do |o|
  o.airs_on = Time.parse('December 28, 2013')
  o.save!
end

ufc.categories.destroy_all

ufc.categories.find_or_create_by!(name: 'Middleweight').tap  do |c|
  c.nominees.create(name: 'Chris Weidman')
  c.nominees.create(name: 'Anderson Silva')
end

ufc.categories.find_or_create_by!(name: 'Woman\'s Bantamweight').tap do |c|
  c.nominees.create(name: 'Ronda Rousey')
  c.nominees.create(name: 'Miesha Tate')
end

ufc.categories.find_or_create_by!(name: 'Heavyweight').tap do |c|
  c.nominees.create(name: 'Josh Barnett')
  c.nominees.create(name: 'Travis Browne')
end

ufc.categories.find_or_create_by!(name: 'Lightweight').tap do |c|
  c.nominees.create(name: 'Jim Miller')
  c.nominees.create(name: 'Fabricio Camoes')
end

ufc.categories.find_or_create_by!(name: 'Featherweight').tap do |c|
  c.nominees.create(name: 'Dustin Poirier')
  c.nominees.create(name: 'Diego Brandao')
end
