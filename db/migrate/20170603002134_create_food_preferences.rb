class CreateFoodPreferences < ActiveRecord::Migration[5.1]
  def change
    create_table :food_preferences do |t|
      t.string :name

      t.timestamps
    end
  end
end
