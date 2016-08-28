class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :team_key, :default => 0
      t.string :site
      t.string :info
      t.string :item
      t.string :process
      

      t.timestamps null: false
    end
  end
end
