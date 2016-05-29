class Additems < ActiveRecord::Migration
  def change
    add_column :tasks, :item1, :string
    add_column :tasks, :item2, :string
    add_column :tasks, :item3, :string
    add_column :tasks, :item4, :string
    add_column :tasks, :item5, :string

  end
end
