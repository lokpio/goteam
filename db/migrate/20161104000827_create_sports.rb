class CreateSports < ActiveRecord::Migration[5.0]
  def change
    create_table :sports do |t|
      t.string :name, null:false
      t.string :category, null:false
      t.text :description
      t.string :video_url
      t.integer :total_players, null:false

      t.timestamps
    end
  end
end
