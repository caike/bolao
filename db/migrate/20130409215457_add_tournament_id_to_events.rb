class AddTournamentIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :tournament_id, :integer
    add_index :events, :tournament_id
  end
end
