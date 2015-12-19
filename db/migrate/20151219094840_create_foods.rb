class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
    	t.string :name
    	t.string :ingredients
    	t.string :instructions

    	t.timestamps
    end
  end
end
