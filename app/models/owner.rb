class Owner < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rests, dependent: :destroy
  validates :name, :email, presence: true
    
  def owns?(restaurant)
  	restaurant.owner == self
  end

end
