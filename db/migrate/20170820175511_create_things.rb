class CreateThings < ActiveRecord::Migration[5.0]
  def change
    create_table :things do |t|
      t.integer :rating
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
