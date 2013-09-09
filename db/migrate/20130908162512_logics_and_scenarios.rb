class LogicsAndScenarios < ActiveRecord::Migration
  def change
    create_table :logics_scenarios do |t|
      t.integer :logic_id
      t.integer :scenario_id
    end
  end
end
