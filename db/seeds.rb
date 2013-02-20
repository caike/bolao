#encoding: UTF-8
#

Category.destroy_all

Category.find_or_create_by!(name: 'Best Picture').tap  do |c|
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

Category.find_or_create_by!(name: 'Actor in a Leading Role').tap do |c|
  ['Bradey Cooper', 'Joaquin Phoenix', 'Daniel Day-Lewis', 'Denzel Washington', 'Hugh Jackman'].each do |a|
    c.nominees.create(name: a)
  end
end

Category.find_or_create_by!(name: 'Acress in a Leading Role').tap do |c|
  ['Jessica Chastain', 'Quvenzhané Wallis', 'Jennifer Lawrence', 'Naomi Watts', 'Emmanuelle Riva'].each do |a|
    c.nominees.create(name: a)
  end
end

