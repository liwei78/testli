class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.text :content
      t.integer :position, default: 0
      t.integer :imp_level, default: 0
      t.integer :parent_scenario_id
      t.integer :child_scenarios_count, default: 0

      t.timestamps
    end

    create_table :logics_scenarios do |t|
      t.integer :logic_id
      t.integer :scenario_id
    end

  end
end
