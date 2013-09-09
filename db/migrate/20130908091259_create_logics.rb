class CreateLogics < ActiveRecord::Migration
  def change
    create_table :logics do |t|
      t.string :title
      t.text :content
      t.integer :position

      t.timestamps
    end
  end
end
