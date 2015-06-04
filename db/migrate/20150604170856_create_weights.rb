class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.integer :pounds

      t.timestamps null: false
    end
  end
end
