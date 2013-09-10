class CreateLogics < ActiveRecord::Migration
  def change
    create_table :logics do |t|
      t.string :title
      t.text :content
      t.integer :position, default: 0
      t.integer :imp_level, default: 0

      t.timestamps
    end
  end
end
