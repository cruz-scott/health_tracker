class CreateCalories < ActiveRecord::Migration
  def change
    create_table :calories do |t|
      t.integer :value

      t.timestamps null: false
    end
  end
end
