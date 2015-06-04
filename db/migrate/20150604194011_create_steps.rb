class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :value
    end
  end
end
