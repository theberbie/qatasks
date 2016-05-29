class Task < ActiveRecord::Base
  belongs_to :user
  validates :item, presence: true
  validates :game, presence: true
  

  def split_items(item_str)


     items_array = []

      item_str.each_line  do |item|
        
        items_array.push(item) 



      end
    
      items_array
  end


end
