class CreateThinkings < ActiveRecord::Migration
  def change
    create_table :thinkings do |t|
      t.integer :case_id
      t.integer :scenario_id
    end
    add_index(:thinkings, [:case_id, :scenario_id])
  end
end
