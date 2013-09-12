class AddColumnsToCases < ActiveRecord::Migration
  def change
    add_column :cases, :context_name, :string
    add_column :cases, :test_class_name, :string
    add_column :cases, :describe, :string
    add_column :cases, :it_sumary, :string
  end
end
