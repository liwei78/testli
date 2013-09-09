class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.text :content
      t.integer :position

      t.timestamps
    end
  end
end
