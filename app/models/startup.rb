class Startup < ActiveRecord::Base
	belongs_to :user
	validates :name, presence: true
	validates :pitch, presence: true
	validates :position, presence: true
	validates :equity, presence: true
	validates :stage, presence: true
end
