class Rest < ActiveRecord::Base
	belongs_to :owner
	validates :name, :address, presence: true
	validates :name, length: { minimum: 3 }
	validates :name, uniqueness: { case_sensitive: false }
end
