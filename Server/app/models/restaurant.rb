class Restaurant < ActiveRecord::Base
	belongs_to :section

	# checkin
	has_many :checkin

	geocoded_by :address
	after_validation :geocode 

	# check if need this:
	validates :name, :presence => true
	validates :description, :presence => true

	include RankedModel
	ranks :row_order, :with_same => :section_id
end
