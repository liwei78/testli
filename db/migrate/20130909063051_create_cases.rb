class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.text :content
      t.integer :position, default: 0
      t.integer :state, default: 0
      t.integer :scenarios_count, default: 0
      t.text :input
      t.text :output

      t.timestamps
    end

    create_table :cases_scenarios do |t|
      t.integer :scenario_id
      t.integer :case_id
    end

  end
end
