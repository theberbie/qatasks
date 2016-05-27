class Removestringfield < ActiveRecord::Migration
  def change
    remove_column :tasks, :item, :string
    add_column :tasks, :item , :text
end


end
