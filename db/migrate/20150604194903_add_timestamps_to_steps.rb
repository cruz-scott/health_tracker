class AddTimestampsToSteps < ActiveRecord::Migration
  def change
    change_table :steps do |t|
      t.timestamps
    end
  end
end
