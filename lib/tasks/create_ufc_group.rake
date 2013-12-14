desc 'Creates initial UFC group'
task create_ufc_group: :environment do
  group = Group.find_or_create_by(name: 'No Hespeck')
  users = User.where(name: ["Paulo Igor Alves Godinho", "Mateus Linhares", "Matthew Schultz", "Carlos Souza"])
  group.users = users
  group.save!
end
