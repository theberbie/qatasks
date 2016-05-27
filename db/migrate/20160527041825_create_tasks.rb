class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :item
      t.string :game

      t.timestamps
    end
   
  end
end
