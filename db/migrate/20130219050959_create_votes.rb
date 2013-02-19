class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :category, index: true
      t.references :nominee, index: true

      t.timestamps
    end
  end
end
