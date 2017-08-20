class RemoveRatingsFromThing < ActiveRecord::Migration[5.0]
  def change
    remove_column :things, :rating, :integer
  end
end
