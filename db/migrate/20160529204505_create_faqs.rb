class CreateFaqs < ActiveRecord::Migration
  def change
    

      
      create_table :faqs do |t|

      t.string :question, :user_id
      t.text   :answer, :user_id

      t.timestamps
    end
  end
end
