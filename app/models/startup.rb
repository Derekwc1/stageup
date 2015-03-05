class Startup < ActiveRecord::Base
	belongs_to :user
	validates :name, presence: true, length: { maximum: 50 }
	validates :pitch, presence: true, length: { maximum: 100 }
	validates :position, presence: true, length: { maximum: 100 }
	validates :equity, presence: true, length: { maximum: 50 }
	validates :stage, presence: true, length: { maximum: 50 }
	validates :startuppitch, presence: true, length: { maximum: 800 }
	validates :startupurl, presence: true, length: { maximum: 100 }
	validates :startuptwiturl, presence: true, length: { maximum: 100 }
	validates :corole, presence: true, length: { maximum: 500 }
	validates :duration, presence: true, length: { maximum: 200 }

end
