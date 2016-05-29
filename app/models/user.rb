class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_format_of :email, with: /\@kabaminc\.com/, message: 'You should have an email from Kabam'
  has_many :tasks         

  

end
