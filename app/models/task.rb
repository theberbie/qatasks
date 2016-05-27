class Task < ActiveRecord::Base
  belongs_to :user
  validates :item, presence: true
  validates :game, presence: true
end
