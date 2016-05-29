class Removeextrainputs < ActiveRecord::Migration
  def change
    remove_column :tasks, :item1, :string
    remove_column :tasks, :item2, :string
    remove_column :tasks, :item3, :string
    remove_column :tasks, :item4, :string
    remove_column :tasks, :item5, :string

  end
end
