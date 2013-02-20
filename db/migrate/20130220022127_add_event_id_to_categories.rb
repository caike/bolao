class AddEventIdToCategories < ActiveRecord::Migration
  def change
    change_table(:categories) do |c|
      c.references :event, index: true
    end
  end
end
