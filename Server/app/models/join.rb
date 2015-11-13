class Join < ActiveRecord::Base
	belongs_to :trek
	belongs_to :user
end
