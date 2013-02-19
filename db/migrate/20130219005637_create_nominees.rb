class CreateNominees < ActiveRecord::Migration
  def change
    create_table :nominees do |t|
      t.string :name
      t.references :category, index: true

      t.timestamps
    end
  end
end
